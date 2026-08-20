import 'package:flutter/material.dart';

import '../../domain/entities/subject.dart';

class SubjectSelector extends StatelessWidget {
  const SubjectSelector({required this.subjects, required this.onSelected, super.key});

  final List<Subject> subjects;
  final ValueChanged<Subject> onSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: subjects
          .map(
            (subject) => ChoiceChip(
              label: Text(subject.label),
              selected: false,
              onSelected: (_) => onSelected(subject),
            ),
          )
          .toList(),
    );
  }
}
