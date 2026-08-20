import 'package:flutter_test/flutter_test.dart';

import 'package:sebas_app/features/exercitacion_stem/domain/entities/subject.dart';

void main() {
  test('expone exactamente las tres materias STEM requeridas', () {
    expect(Subject.values.map((subject) => subject.firestoreId), [
      'matematica',
      'fisica',
      'quimica',
    ]);
  });
}
