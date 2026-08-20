import 'package:flutter_test/flutter_test.dart';

import 'package:sebas_app/features/exercitacion_stem/data/repositories/in_memory_repositories.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/entities/subject.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/usecases/submit_answer_use_case.dart';

void main() {
  test('guarda la respuesta correcta sin pista de distractor', () async {
    final repository = InMemoryExerciseRepository();
    final attempts = InMemoryAttemptRepository();
    final exercise = await repository.getPublishedBySubject(Subject.values.first);

    final result = await SubmitAnswerUseCase(attempts)(
      exercise: exercise!,
      selectedOptionId: 'b',
      elapsedMilliseconds: 1200,
    );

    expect(result.isRight(), isTrue);
    result.fold((_) => fail('No debía fallar'), (value) {
      expect(value.isCorrect, isTrue);
      expect(value.distractorHint, isNull);
      expect(attempts.attempts.single.elapsedMilliseconds, 1200);
    });
  });

  test('devuelve la pista específica del distractor', () async {
    final repository = InMemoryExerciseRepository();
    final attempts = InMemoryAttemptRepository();
    final exercise = await repository.getPublishedBySubject(Subject.values.first);

    final result = await SubmitAnswerUseCase(attempts)(
      exercise: exercise!,
      selectedOptionId: 'a',
      elapsedMilliseconds: 100,
    );

    result.fold((_) => fail('No debía fallar'), (value) {
      expect(value.isCorrect, isFalse);
      expect(value.distractorHint, contains('resta'));
    });
  });
}
