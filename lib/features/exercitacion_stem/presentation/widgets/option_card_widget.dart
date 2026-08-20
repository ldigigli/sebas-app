import 'package:flutter/material.dart';

import '../../domain/entities/exercise.dart';
import 'latex_text.dart';

class OptionCardWidget extends StatelessWidget {
  const OptionCardWidget({
    required this.option,
    required this.selected,
    required this.onTap,
    super.key,
  });

  final ExerciseOption option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      selected: selected,
      label: 'Opción ${option.id}',
      child: Card(
        color: selected ? Theme.of(context).colorScheme.primaryContainer : null,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(child: Text(option.id.toUpperCase())),
                const SizedBox(width: 16),
                Expanded(child: LatexText(option.labelLatex)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
