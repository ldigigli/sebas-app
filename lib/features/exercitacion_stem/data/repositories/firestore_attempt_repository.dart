import '../../../../core/error/failures.dart';
import '../../domain/entities/attempt.dart';
import '../../domain/repositories/attempt_repository.dart';
import '../datasources/firestore_attempt_data_source.dart';
import '../models/attempt_model.dart';

class FirestoreAttemptRepository implements AttemptRepository {
  const FirestoreAttemptRepository(this._dataSource);

  final FirestoreAttemptDataSource _dataSource;

  @override
  Future<Attempt> save(Attempt attempt) async {
    try {
      return await _dataSource.save(AttemptModel.fromEntity(attempt));
    } on Failure {
      rethrow;
    }
  }
}
