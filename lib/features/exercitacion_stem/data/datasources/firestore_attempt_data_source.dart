import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/failures.dart';
import '../models/attempt_model.dart';

class FirestoreAttemptDataSource {
  FirestoreAttemptDataSource(this._firestore);

  final FirebaseFirestore _firestore;

  Future<AttemptModel> save(AttemptModel attempt) async {
    try {
      final reference = await _firestore.collection('attempts').add(attempt.toFirestore());
      return AttemptModel(
        id: reference.id,
        exerciseId: attempt.exerciseId,
        subjectId: attempt.subjectId,
        selectedOptionId: attempt.selectedOptionId,
        isCorrect: attempt.isCorrect,
        elapsedMilliseconds: attempt.elapsedMilliseconds,
        submittedAt: attempt.submittedAt,
      );
    } on FirebaseException catch (error) {
      if (error.code == 'permission-denied') {
        throw const PermissionFailure('No tienes permisos para guardar este intento.');
      }
      throw const PersistenceFailure('No se pudo guardar el intento en Firestore.');
    }
  }
}
