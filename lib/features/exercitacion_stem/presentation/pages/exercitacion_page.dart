import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/exercitacion_bloc.dart';
import '../widgets/feedback_panel.dart';
import '../widgets/latex_text.dart';
import '../widgets/option_card_widget.dart';
import '../widgets/subject_selector.dart';

class ExercitacionPage extends StatelessWidget {
  const ExercitacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercitación STEM')),
      body: BlocBuilder<ExercitacionBloc, ExercitacionState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Text('Elige una materia', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 12),
              SubjectSelector(
                subjects: state.subjects,
                onSelected: (subject) => context.read<ExercitacionBloc>().add(SubjectSelected(subject)),
              ),
              const SizedBox(height: 24),
              if (state.isLoading) const Center(child: CircularProgressIndicator()),
              if (state.failure case final failure?)
                Card(
                  color: Theme.of(context).colorScheme.errorContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(failure.message),
                  ),
                ),
              if (state.exercise case final exercise?) ...[
                Text(exercise.subject.label, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 12),
                LatexText(exercise.statementLatex, fontSize: 22),
                const SizedBox(height: 20),
                ...exercise.options.map(
                  (option) => OptionCardWidget(
                    option: option,
                    selected: option.id == state.selectedOptionId,
                    onTap: () => context.read<ExercitacionBloc>().add(OptionSelected(option.id)),
                  ),
                ),
                const SizedBox(height: 8),
                FilledButton.icon(
                  onPressed: state.canSubmit
                      ? () => context.read<ExercitacionBloc>().add(const AnswerSubmitted())
                      : null,
                  icon: state.isSubmitting
                      ? const SizedBox.square(dimension: 18, child: CircularProgressIndicator(strokeWidth: 2))
                      : const Icon(Icons.check),
                  label: const Text('Enviar respuesta'),
                ),
                if (state.result case final result?) ...[
                  const SizedBox(height: 20),
                  FeedbackPanel(result: result),
                ],
              ],
            ],
          );
        },
      ),
    );
  }
}
