import '../../../../core/error/failures.dart';
import '../../domain/entities/exercise.dart';
import '../../domain/entities/subject.dart';
import '../../domain/repositories/exercise_repository.dart';
import '../datasources/firestore_exercise_data_source.dart';

class FirestoreExerciseRepository implements ExerciseRepository {
  const FirestoreExerciseRepository(this._dataSource);

  final FirestoreExerciseDataSource _dataSource;

  @override
  Future<Exercise?> getPublishedBySubject(Subject subject) async {
    try {
      return await _dataSource.getPublishedBySubject(subject);
    } on NoExerciseAvailableFailure {
      return null;
    }
  }
}
