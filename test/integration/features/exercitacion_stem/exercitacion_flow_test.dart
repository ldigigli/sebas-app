import 'package:flutter_test/flutter_test.dart';

import 'package:sebas_app/features/exercitacion_stem/data/repositories/in_memory_repositories.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/entities/subject.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/usecases/submit_answer_use_case.dart';

void main() {
  test('flujo completo conserva opción, tiempo y feedback', () async {
    final exercise = await InMemoryExerciseRepository().getPublishedBySubject(Subject.values.first);
    final result = await SubmitAnswerUseCase(InMemoryAttemptRepository())(
      exercise: exercise!,
      selectedOptionId: 'a',
      elapsedMilliseconds: 2500,
    );

    expect(result.isRight(), isTrue);
    result.fold((_) => fail('No debía fallar'), (answer) {
      expect(answer.attempt.selectedOptionId, 'a');
      expect(answer.attempt.elapsedMilliseconds, 2500);
      expect(answer.distractorHint, isNotNull);
      expect(answer.stepByStepLatex, hasLength(3));
    });
  });
}
