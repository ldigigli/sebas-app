import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sebas_app/features/exercitacion_stem/data/repositories/in_memory_repositories.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/usecases/get_exercise_use_case.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/usecases/submit_answer_use_case.dart';
import 'package:sebas_app/features/exercitacion_stem/presentation/bloc/exercitacion_bloc.dart';
import 'package:sebas_app/features/exercitacion_stem/presentation/pages/exercitacion_page.dart';

void main() {
  testWidgets('muestra cuatro opciones después de elegir una materia', (tester) async {
    final exercises = InMemoryExerciseRepository();
    final attempts = InMemoryAttemptRepository();
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider(
          create: (_) => ExercitacionBloc(
            getExercise: GetExerciseUseCase(exercises),
            submitAnswer: SubmitAnswerUseCase(attempts),
          ),
          child: const ExercitacionPage(),
        ),
      ),
    );

    await tester.tap(find.text('Matemática'));
    await tester.pumpAndSettle();
    expect(find.byType(ChoiceChip), findsNWidgets(3));
    expect(find.byType(Card), findsNWidgets(4));
  });
}
