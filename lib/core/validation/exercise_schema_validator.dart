import '../error/failures.dart';
import '../../features/exercitacion_stem/domain/entities/exercise.dart';

class ExerciseSchemaValidator {
  const ExerciseSchemaValidator();

  Failure? validate(Exercise exercise) {
    if (!exercise.isValid) {
      return const InvalidExerciseFailure(
        'El ejercicio debe tener cuatro opciones, una respuesta válida, pistas y resolución.',
      );
    }
    if (exercise.options.any((option) => option.labelLatex.trim().isEmpty) ||
        exercise.stepByStepLatex.any((step) => step.trim().isEmpty)) {
      return const InvalidExerciseFailure('El contenido LaTeX no puede estar vacío.');
    }
    return null;
  }
}
