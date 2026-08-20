import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/attempt.dart';

class AttemptModel extends Attempt {
  const AttemptModel({
    required super.id,
    required super.exerciseId,
    required super.subjectId,
    required super.selectedOptionId,
    required super.isCorrect,
    required super.elapsedMilliseconds,
    required super.submittedAt,
  });

  factory AttemptModel.fromEntity(Attempt attempt) => AttemptModel(
        id: attempt.id,
        exerciseId: attempt.exerciseId,
        subjectId: attempt.subjectId,
        selectedOptionId: attempt.selectedOptionId,
        isCorrect: attempt.isCorrect,
        elapsedMilliseconds: attempt.elapsedMilliseconds,
        submittedAt: attempt.submittedAt,
      );

  Map<String, dynamic> toFirestore() => {
        'exerciseId': exerciseId,
        'subjectId': subjectId,
        'selectedOptionId': selectedOptionId,
        'isCorrect': isCorrect,
        'elapsedMilliseconds': elapsedMilliseconds,
        'submittedAt': FieldValue.serverTimestamp(),
      };
}
