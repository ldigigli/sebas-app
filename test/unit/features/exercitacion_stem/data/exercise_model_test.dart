import 'package:flutter_test/flutter_test.dart';

import 'package:sebas_app/features/exercitacion_stem/data/repositories/in_memory_repositories.dart';
import 'package:sebas_app/features/exercitacion_stem/domain/entities/subject.dart';

void main() {
  test('el fixture de ejercicio cumple las invariantes de publicación', () async {
    final exercise = await InMemoryExerciseRepository().getPublishedBySubject(Subject.values.first);

    expect(exercise!.isValid, isTrue);
    expect(exercise.options, hasLength(4));
    expect(exercise.distractorHints.keys, containsAll(['a', 'c', 'd']));
  });
}
