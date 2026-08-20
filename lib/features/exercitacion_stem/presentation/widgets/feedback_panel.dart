import 'package:flutter/material.dart';

import '../../domain/usecases/submit_answer_use_case.dart';
import 'latex_text.dart';

class FeedbackPanel extends StatelessWidget {
  const FeedbackPanel({required this.result, super.key});

  final SubmitAnswerResult result;

  @override
  Widget build(BuildContext context) {
    final isCorrect = result.isCorrect;
    return Card(
      color: isCorrect
          ? Theme.of(context).colorScheme.primaryContainer
          : Theme.of(context).colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isCorrect ? 'Respuesta correcta' : 'Respuesta incorrecta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            if (result.distractorHint case final hint?) ...[
              const SizedBox(height: 12),
              const Text('Pista para tu respuesta:'),
              LatexText(hint, fontSize: 16),
            ],
            if (!isCorrect) ...[
              const SizedBox(height: 12),
              const Text('Resolución paso a paso:'),
              ...result.stepByStepLatex.map(
                (step) => Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: LatexText(step, fontSize: 16),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
