# Quickstart: Ejercitación STEM

## Prerrequisitos

- Flutter y Dart instalados en las versiones fijadas por el futuro `pubspec.yaml`.
- Firebase CLI y Firebase Emulator Suite disponibles para pruebas locales.
- Dependencias: `flutter_bloc`, `cloud_firestore`, `firebase_core`, `flutter_math_fork`, `dartz`, `equatable`, `bloc_test`.
- Fixtures válidos de ejercicios para Matemática, Física y Química que cumplan [data-model.md](./data-model.md).

## Validación estática

Desde la raíz del proyecto Flutter:

```bash
flutter pub get
flutter analyze
flutter test
```

Resultado esperado: análisis sin errores y pruebas de dominio, BLoC y widgets aprobadas.

## Validación de contrato

Iniciar los emuladores configurados para Firestore y autenticación:

```bash
firebase emulators:start --only firestore,auth
flutter test test/contract/features/exercitacion_stem
```

Resultado esperado: los documentos inválidos se rechazan; un ejercicio publicado válido contiene exactamente cuatro opciones; los intentos guardan la opción, materia, corrección, tiempo y timestamp.

## Validación end-to-end

```bash
flutter test test/integration/features/exercitacion_stem
```

Comprobar como mínimo:

1. El alumno selecciona Matemática, Física o Química.
2. Se presenta un ejercicio con exactamente cuatro opciones y fórmulas renderizadas mediante `flutter_math_fork`.
3. Una respuesta válida registra la opción seleccionada y `elapsedMilliseconds`.
4. Una respuesta incorrecta muestra la pista del distractor elegido y la resolución paso a paso.
5. Una desconexión durante el envío muestra un error y no presenta el intento como guardado.

## Criterios de aceptación rápidos

- Revisar que el BLoC no importe `cloud_firestore` directamente.
- Revisar que `SubmitAnswerUseCase` devuelva `Either<Failure, SubmitAnswerResult>`.
- Revisar que ningún widget renderice ecuaciones como texto plano.
- Revisar que los fixtures de Firestore cumplan el contrato de [contracts/firestore.md](./contracts/firestore.md).
