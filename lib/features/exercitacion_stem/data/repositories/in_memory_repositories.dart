import '../../domain/entities/attempt.dart';
import '../../domain/entities/exercise.dart';
import '../../domain/entities/subject.dart';
import '../../domain/repositories/attempt_repository.dart';
import '../../domain/repositories/exercise_repository.dart';

class InMemoryExerciseRepository implements ExerciseRepository {
  @override
  Future<Exercise?> getPublishedBySubject(Subject subject) async => Exercise(
        id: 'demo-${subject.firestoreId}',
        subject: subject,
        statementLatex: r'\text{Resuelve: } 2x + 4 = 10',
        options: const [
          ExerciseOption(id: 'a', labelLatex: r'x = 2'),
          ExerciseOption(id: 'b', labelLatex: r'x = 3'),
          ExerciseOption(id: 'c', labelLatex: r'x = 4'),
          ExerciseOption(id: 'd', labelLatex: r'x = 5'),
        ],
        correctOptionId: 'b',
        distractorHints: const {
          'a': r'\text{Revisa la resta antes de dividir.}',
          'c': r'\text{Comprueba el resultado sustituyendo } x.',
          'd': r'\text{Divide ambos lados por el coeficiente de } x.',
        },
        stepByStepLatex: const [
          r'2x + 4 = 10',
          r'2x = 10 - 4 = 6',
          r'x = \frac{6}{2} = 3',
        ],
      );
}

class InMemoryAttemptRepository implements AttemptRepository {
  final List<Attempt> attempts = [];

  @override
  Future<Attempt> save(Attempt attempt) async {
    attempts.add(attempt);
    return attempt;
  }
}
