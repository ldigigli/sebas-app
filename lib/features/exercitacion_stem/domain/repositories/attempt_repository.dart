import '../entities/attempt.dart';

abstract interface class AttemptRepository {
  Future<Attempt> save(Attempt attempt);
}
