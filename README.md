# SEBAS

Aplicación móvil de ejercitación STEM construida con Flutter y Clean Architecture by Feature.

## Desarrollo

Requisitos: Flutter, Dart, Firebase CLI y Firebase Emulator Suite.

```bash
flutter pub get
flutter analyze
flutter test
firebase emulators:start --only firestore,auth
```

La feature inicial está en `lib/features/exercitacion_stem/` y usa BLoC, Cloud Firestore, Dartz y `flutter_math_fork`. Las decisiones de producto y arquitectura están documentadas en `specs/001-ejercitacion-stem/`.

