import '../entities/exercise.dart';
import '../entities/subject.dart';

abstract interface class ExerciseRepository {
  Future<Exercise?> getPublishedBySubject(Subject subject);
}
