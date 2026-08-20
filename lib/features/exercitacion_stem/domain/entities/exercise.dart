import 'package:equatable/equatable.dart';

import 'subject.dart';

class ExerciseOption extends Equatable {
  const ExerciseOption({required this.id, required this.labelLatex});

  final String id;
  final String labelLatex;

  @override
  List<Object> get props => [id, labelLatex];
}

class Exercise extends Equatable {
  const Exercise({
    required this.id,
    required this.subject,
    required this.statementLatex,
    required this.options,
    required this.correctOptionId,
    required this.distractorHints,
    required this.stepByStepLatex,
  });

  final String id;
  final Subject subject;
  final String statementLatex;
  final List<ExerciseOption> options;
  final String correctOptionId;
  final Map<String, String> distractorHints;
  final List<String> stepByStepLatex;

  bool get isValid {
    final optionIds = options.map((option) => option.id).toSet();
    final distractorIds = optionIds.difference({correctOptionId});
    return id.isNotEmpty &&
        statementLatex.isNotEmpty &&
        options.length == 4 &&
        optionIds.length == 4 &&
        optionIds.contains(correctOptionId) &&
        distractorIds.every(distractorHints.containsKey) &&
        stepByStepLatex.isNotEmpty;
  }

  @override
  List<Object> get props => [
        id,
        subject,
        statementLatex,
        options,
        correctOptionId,
        distractorHints,
        stepByStepLatex,
      ];
}
