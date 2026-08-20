import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/exercise.dart';
import '../../domain/entities/subject.dart';
import '../../domain/usecases/get_exercise_use_case.dart';
import '../../domain/usecases/submit_answer_use_case.dart';

sealed class ExercitacionEvent extends Equatable {
  const ExercitacionEvent();

  @override
  List<Object?> get props => [];
}

class SubjectSelected extends ExercitacionEvent {
  const SubjectSelected(this.subject);

  final Subject subject;

  @override
  List<Object> get props => [subject];
}

class OptionSelected extends ExercitacionEvent {
  const OptionSelected(this.optionId);

  final String optionId;

  @override
  List<Object> get props => [optionId];
}

class AnswerSubmitted extends ExercitacionEvent {
  const AnswerSubmitted();
}

class ExercitacionState extends Equatable {
  const ExercitacionState({
    this.subjects = Subject.values,
    this.selectedSubject,
    this.exercise,
    this.selectedOptionId,
    this.isLoading = false,
    this.isSubmitting = false,
    this.failure,
    this.result,
  });

  final List<Subject> subjects;
  final Subject? selectedSubject;
  final Exercise? exercise;
  final String? selectedOptionId;
  final bool isLoading;
  final bool isSubmitting;
  final Failure? failure;
  final SubmitAnswerResult? result;

  ExercitacionState copyWith({
    Subject? selectedSubject,
    Exercise? exercise,
    String? selectedOptionId,
    bool? isLoading,
    bool? isSubmitting,
    Failure? failure,
    SubmitAnswerResult? result,
    bool clearFailure = false,
    bool clearResult = false,
  }) {
    return ExercitacionState(
      subjects: subjects,
      selectedSubject: selectedSubject ?? this.selectedSubject,
      exercise: exercise ?? this.exercise,
      selectedOptionId: selectedOptionId ?? this.selectedOptionId,
      isLoading: isLoading ?? this.isLoading,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      failure: clearFailure ? null : failure ?? this.failure,
      result: clearResult ? null : result ?? this.result,
    );
  }

  bool get canSubmit => exercise != null && selectedOptionId != null && !isSubmitting;

  @override
  List<Object?> get props => [
        subjects,
        selectedSubject,
        exercise,
        selectedOptionId,
        isLoading,
        isSubmitting,
        failure,
        result,
      ];
}

class ExercitacionBloc extends Bloc<ExercitacionEvent, ExercitacionState> {
  ExercitacionBloc({
    required GetExerciseUseCase getExercise,
    required SubmitAnswerUseCase submitAnswer,
  })  : _getExercise = getExercise,
        _submitAnswer = submitAnswer,
        super(const ExercitacionState()) {
    on<SubjectSelected>(_onSubjectSelected);
    on<OptionSelected>(_onOptionSelected);
    on<AnswerSubmitted>(_onAnswerSubmitted);
  }

  final GetExerciseUseCase _getExercise;
  final SubmitAnswerUseCase _submitAnswer;
  DateTime? _startedAt;

  Future<void> _onSubjectSelected(
    SubjectSelected event,
    Emitter<ExercitacionState> emit,
  ) async {
    emit(state.copyWith(
      selectedSubject: event.subject,
      isLoading: true,
      clearFailure: true,
      clearResult: true,
    ));
    final result = await _getExercise(event.subject);
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (exercise) {
        _startedAt = DateTime.now();
        emit(state.copyWith(
          isLoading: false,
          exercise: exercise,
          clearFailure: true,
          clearResult: true,
        ));
      },
    );
  }

  void _onOptionSelected(OptionSelected event, Emitter<ExercitacionState> emit) {
    if (state.exercise?.options.any((option) => option.id == event.optionId) != true) return;
    emit(state.copyWith(selectedOptionId: event.optionId, clearFailure: true));
  }

  Future<void> _onAnswerSubmitted(
    AnswerSubmitted event,
    Emitter<ExercitacionState> emit,
  ) async {
    final exercise = state.exercise;
    final selectedOptionId = state.selectedOptionId;
    if (exercise == null || selectedOptionId == null) {
      emit(state.copyWith(
        failure: const InvalidAnswerFailure('Selecciona una opción antes de continuar.'),
      ));
      return;
    }
    final elapsed = DateTime.now().difference(_startedAt ?? DateTime.now()).inMilliseconds;
    emit(state.copyWith(isSubmitting: true, clearFailure: true));
    final result = await _submitAnswer(
      exercise: exercise,
      selectedOptionId: selectedOptionId,
      elapsedMilliseconds: elapsed,
    );
    result.fold(
      (failure) => emit(state.copyWith(isSubmitting: false, failure: failure)),
      (answer) => emit(state.copyWith(isSubmitting: false, result: answer)),
    );
  }
}
