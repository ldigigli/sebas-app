import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class InvalidExerciseFailure extends Failure {
  const InvalidExerciseFailure(super.message);
}

class InvalidAnswerFailure extends Failure {
  const InvalidAnswerFailure(super.message);
}

class NoExerciseAvailableFailure extends Failure {
  const NoExerciseAvailableFailure(super.message);
}

class PersistenceFailure extends Failure {
  const PersistenceFailure(super.message);
}

class PermissionFailure extends Failure {
  const PermissionFailure(super.message);
}
