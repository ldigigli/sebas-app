import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/exercise.dart';
import '../../domain/entities/subject.dart';

class ExerciseModel extends Exercise {
  const ExerciseModel({
    required super.id,
    required super.subject,
    required super.statementLatex,
    required super.options,
    required super.correctOptionId,
    required super.distractorHints,
    required super.stepByStepLatex,
  });

  factory ExerciseModel.fromDocument(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data() ?? <String, dynamic>{};
    final subjectId = SubjectId.values.firstWhere(
      (subject) => subject.name == data['subjectId'],
      orElse: () => SubjectId.matematica,
    );
    final options = (data['options'] as List<dynamic>? ?? const <dynamic>[])
        .whereType<Map<String, dynamic>>()
        .map(
          (option) => ExerciseOption(
            id: option['id'] as String? ?? '',
            labelLatex: option['labelLatex'] as String? ?? '',
          ),
        )
        .toList(growable: false);
    final hints = Map<String, dynamic>.from(data['distractorHints'] as Map? ?? const {})
        .map((key, value) => MapEntry(key, value.toString()));

    return ExerciseModel(
      id: document.id,
      subject: Subject(id: subjectId, label: _labelFor(subjectId)),
      statementLatex: data['statementLatex'] as String? ?? '',
      options: options,
      correctOptionId: data['correctOptionId'] as String? ?? '',
      distractorHints: hints,
      stepByStepLatex: (data['stepByStepLatex'] as List<dynamic>? ?? const [])
          .map((step) => step.toString())
          .toList(growable: false),
    );
  }

  static String _labelFor(SubjectId subject) => switch (subject) {
        SubjectId.matematica => 'Matemática',
        SubjectId.fisica => 'Física',
        SubjectId.quimica => 'Química',
      };
}
