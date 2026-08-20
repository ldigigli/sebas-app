import 'package:dartz/dartz.dart' hide Attempt;

import '../../../../core/error/failures.dart';
import '../entities/attempt.dart';
import '../entities/exercise.dart';
import '../repositories/attempt_repository.dart';

class SubmitAnswerResult {
  const SubmitAnswerResult({
    required this.attempt,
    required this.stepByStepLatex,
    this.distractorHint,
  });

  final Attempt attempt;
  final List<String> stepByStepLatex;
  final String? distractorHint;

  bool get isCorrect => attempt.isCorrect;
}

class SubmitAnswerUseCase {
  const SubmitAnswerUseCase(this._attemptRepository);

  final AttemptRepository _attemptRepository;

  Future<Either<Failure, SubmitAnswerResult>> call({
    required Exercise exercise,
    required String selectedOptionId,
    required int elapsedMilliseconds,
  }) async {
    if (!exercise.isValid) {
      return left(const InvalidExerciseFailure('El ejercicio no es válido.'));
    }
    if (!exercise.options.any((option) => option.id == selectedOptionId)) {
      return left(const InvalidAnswerFailure('La opción no pertenece al ejercicio.'));
    }
    if (elapsedMilliseconds < 0) {
      return left(const InvalidAnswerFailure('El tiempo no puede ser negativo.'));
    }

    final isCorrect = selectedOptionId == exercise.correctOptionId;
    final attempt = Attempt(
      id: '${exercise.id}-$elapsedMilliseconds',
      exerciseId: exercise.id,
      subjectId: exercise.subject.firestoreId,
      selectedOptionId: selectedOptionId,
      isCorrect: isCorrect,
      elapsedMilliseconds: elapsedMilliseconds,
      submittedAt: DateTime.now(),
    );

    try {
      final saved = await _attemptRepository.save(attempt);
      return right(
        SubmitAnswerResult(
          attempt: saved,
          stepByStepLatex: exercise.stepByStepLatex,
          distractorHint: isCorrect ? null : exercise.distractorHints[selectedOptionId],
        ),
      );
    } on Failure catch (failure) {
      return left(failure);
    } catch (_) {
      return left(const PersistenceFailure('No se pudo guardar el intento.'));
    }
  }
}
