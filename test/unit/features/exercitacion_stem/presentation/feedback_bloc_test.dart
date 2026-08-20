import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sebas_app/features/exercitacion_stem/data/repositories/in_memory_repositories.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/entities/subject.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/usecases/get_exercise_use_case.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/usecases/submit_answer_use_case.dart';
import 'package:sebas_app/features/exercitacion_stem/presentation/bloc/exercitacion_bloc.dart';

void main() {
  blocTest<ExercitacionBloc, ExercitacionState>(
    'emite feedback para un distractor',
    build: () {
      final exercises = InMemoryExerciseRepository();
      return ExercitacionBloc(
        getExercise: GetExerciseUseCase(exercises),
        submitAnswer: SubmitAnswerUseCase(InMemoryAttemptRepository()),
      );
    },
    act: (bloc) async {
      bloc.add(const SubjectSelected(Subject(id: SubjectId.matematica, label: 'Matemática')));
      await Future<void>.delayed(Duration.zero);
      bloc.add(const OptionSelected('a'));
      bloc.add(const AnswerSubmitted());
    },
    skip: 4,
    expect: () => [
      isA<ExercitacionState>().having((state) => state.result?.distractorHint, 'hint', contains('resta')),
    ],
  );
}
