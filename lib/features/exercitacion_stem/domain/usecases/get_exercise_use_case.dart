import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/exercise.dart';
import '../entities/subject.dart';
import '../repositories/exercise_repository.dart';

class GetExerciseUseCase {
  const GetExerciseUseCase(this._repository);

  final ExerciseRepository _repository;

  Future<Either<Failure, Exercise>> call(Subject subject) async {
    try {
      final exercise = await _repository.getPublishedBySubject(subject);
      if (exercise == null) {
        return left(const NoExerciseAvailableFailure('No hay ejercicios para esta materia.'));
      }
      return right(exercise);
    } on Failure catch (failure) {
      return left(failure);
    } catch (_) {
      return left(const PersistenceFailure('No se pudo cargar el ejercicio.'));
    }
  }
}
