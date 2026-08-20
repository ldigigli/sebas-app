import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'features/exercitacion_stem/data/repositories/in_memory_repositories.dart';
import 'firebase_options.dart';
import 'features/exercitacion_stem/domain/usecases/get_exercise_use_case.dart';
import 'features/exercitacion_stem/domain/usecases/submit_answer_use_case.dart';
import 'features/exercitacion_stem/presentation/bloc/exercitacion_bloc.dart';
import 'features/exercitacion_stem/presentation/pages/exercitacion_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final exerciseRepository = InMemoryExerciseRepository();
  final attemptRepository = InMemoryAttemptRepository();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ExercitacionBloc(
            getExercise: GetExerciseUseCase(exerciseRepository),
            submitAnswer: SubmitAnswerUseCase(attemptRepository),
          ),
        ),
      ],
      child: const SebasApp(),
    ),
  );
}

class SebasApp extends StatelessWidget {
  const SebasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SEBAS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const ExercitacionPage(),
    );
  }
}
