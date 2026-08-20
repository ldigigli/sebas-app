import 'package:flutter_test/flutter_test.dart';

import 'package:sebas_app/features/exercitacion_stem/data/repositories/in_memory_repositories.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/entities/subject.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/usecases/submit_answer_use_case.dart';

void main() {
  test('cada distractor entrega su propia pista', () async {
    final exercise = await InMemoryExerciseRepository().getPublishedBySubject(Subject.values.first);
    final useCase = SubmitAnswerUseCase(InMemoryAttemptRepository());

    for (final optionId in ['a', 'c', 'd']) {
      final result = await useCase(
        exercise: exercise!,
        selectedOptionId: optionId,
        elapsedMilliseconds: 1,
      );
      expect(result.isRight(), isTrue);
      result.fold((_) => fail('No debía fallar'), (answer) {
        expect(answer.distractorHint, exercise.distractorHints[optionId]);
        expect(answer.stepByStepLatex, isNotEmpty);
      });
    }
  });
}
