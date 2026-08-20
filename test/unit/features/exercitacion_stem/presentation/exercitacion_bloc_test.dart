import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sebas_app/features/exercitacion_stem/data/repositories/in_memory_repositories.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/entities/subject.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/usecases/get_exercise_use_case.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/usecases/submit_answer_use_case.dart';
import 'package:sebas_app/features/exercitacion_stem/presentation/bloc/exercitacion_bloc.dart';

void main() {
  late InMemoryExerciseRepository exercises;
  late InMemoryAttemptRepository attempts;

  setUp(() {
    exercises = InMemoryExerciseRepository();
    attempts = InMemoryAttemptRepository();
  });

  blocTest<ExercitacionBloc, ExercitacionState>(
    'seleccionar una materia carga su ejercicio',
    build: () => ExercitacionBloc(
      getExercise: GetExerciseUseCase(exercises),
      submitAnswer: SubmitAnswerUseCase(attempts),
    ),
    act: (bloc) => bloc.add(const SubjectSelected(Subject(id: SubjectId.quimica, label: 'Química'))),
    expect: () => [
      isA<ExercitacionState>().having((state) => state.isLoading, 'loading', true),
      isA<ExercitacionState>().having((state) => state.exercise, 'exercise', isNotNull),
    ],
  );
}
