import 'package:equatable/equatable.dart';

enum SubjectId { matematica, fisica, quimica }

class Subject extends Equatable {
  const Subject({required this.id, required this.label});

  final SubjectId id;
  final String label;

  static const values = <Subject>[
    Subject(id: SubjectId.matematica, label: 'Matemática'),
    Subject(id: SubjectId.fisica, label: 'Física'),
    Subject(id: SubjectId.quimica, label: 'Química'),
  ];

  String get firestoreId => id.name;

  @override
  List<Object> get props => [id, label];
}
