import 'package:flutter_test/flutter_test.dart';

import 'package:sebas_app/features/exercitacion_stem/data/repositories/in_memory_repositories.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/entities/subject.dart';

void main() {
  test('carga un ejercicio para la materia solicitada', () async {
    final exercise = await InMemoryExerciseRepository().getPublishedBySubject(Subject.values[1]);

    expect(exercise, isNotNull);
    expect(exercise!.subject.id, SubjectId.fisica);
    expect(exercise.options, hasLength(4));
  });
}
