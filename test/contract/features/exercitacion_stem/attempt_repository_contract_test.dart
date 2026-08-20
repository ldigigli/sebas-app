import 'package:flutter_test/flutter_test.dart';

import 'package:sebas_app/features/exercitacion_stem/data/repositories/in_memory_repositories.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/entities/attempt.dart';

void main() {
  test('un repositorio de intentos conserva el contrato de persistencia', () async {
    final repository = InMemoryAttemptRepository();
    final attempt = Attempt(
      id: 'attempt-1',
      exerciseId: 'exercise-1',
      subjectId: 'matematica',
      selectedOptionId: 'a',
      isCorrect: false,
      elapsedMilliseconds: 300,
      submittedAt: DateTime.utc(2026, 8, 20),
    );

    final saved = await repository.save(attempt);
    expect(saved, attempt);
    expect(repository.attempts.single.elapsedMilliseconds, greaterThanOrEqualTo(0));
  });
}
