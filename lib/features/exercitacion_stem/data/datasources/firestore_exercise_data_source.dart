import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/validation/exercise_schema_validator.dart';
import '../../domain/entities/subject.dart';
import '../models/exercise_model.dart';

class FirestoreExerciseDataSource {
  FirestoreExerciseDataSource({
    required FirebaseFirestore firestore,
    ExerciseSchemaValidator validator = const ExerciseSchemaValidator(),
  })  : _firestore = firestore,
        _validator = validator;

  final FirebaseFirestore _firestore;
  final ExerciseSchemaValidator _validator;

  Future<ExerciseModel> getPublishedBySubject(Subject subject) async {
    final snapshot = await _firestore
        .collection('exercises')
        .where('subjectId', isEqualTo: subject.firestoreId)
        .where('status', isEqualTo: 'published')
        .limit(1)
        .get();
    if (snapshot.docs.isEmpty) {
      throw const NoExerciseAvailableFailure('No hay ejercicios disponibles.');
    }
    final exercise = ExerciseModel.fromDocument(snapshot.docs.first);
    final failure = _validator.validate(exercise);
    if (failure != null) throw failure;
    return exercise;
  }
}
