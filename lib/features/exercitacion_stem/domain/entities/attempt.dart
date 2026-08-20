import 'package:equatable/equatable.dart';

class Attempt extends Equatable {
  const Attempt({
    required this.id,
    required this.exerciseId,
    required this.subjectId,
    required this.selectedOptionId,
    required this.isCorrect,
    required this.elapsedMilliseconds,
    required this.submittedAt,
  });

  final String id;
  final String exerciseId;
  final String subjectId;
  final String selectedOptionId;
  final bool isCorrect;
  final int elapsedMilliseconds;
  final DateTime submittedAt;

  @override
  List<Object> get props => [
        id,
        exerciseId,
        subjectId,
        selectedOptionId,
        isCorrect,
        elapsedMilliseconds,
        submittedAt,
      ];
}
