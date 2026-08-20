# Implementation Plan: Módulo de Ejercitación STEM

**Branch**: `001-ejercitacion-stem` | **Date**: 2026-08-20 | **Spec**: [spec.md](./spec.md)

**Input**: Feature specification from `/specs/001-ejercitacion-stem/spec.md`

## Summary

Implementar un flujo móvil de ejercitación STEM por materia. La solución usará Flutter con Clean Architecture organizada por feature; BLoC coordinará el estado de selección, carga, respuesta y retroalimentación; Firestore será la fuente persistente; `Dartz` modelará errores funcionales en `SubmitAnswerUseCase`. Las ecuaciones se renderizarán exclusivamente con `flutter_math_fork`.

## Technical Context

**Language/Version**: Dart 3.x / Flutter 3.x (versión exacta se fijará en `pubspec.yaml`)

**Primary Dependencies**: `flutter_bloc`, `cloud_firestore`, `flutter_math_fork`, `dartz`, `equatable`; Firebase Core para inicialización.

**Storage**: Cloud Firestore, con validación de esquema antes de leer/publicar ejercicios y reglas de seguridad para separar contenido e intentos.

**Testing**: `flutter_test` para presentación y dominio, `bloc_test` para BLoC, mocks/fakes para repositorios y Firebase Emulator Suite para integración con Firestore.

**Target Platform**: Aplicación móvil Flutter para Android e iOS.

**Project Type**: Mobile app, feature-first Clean Architecture.

**Performance Goals**: Mostrar la pantalla de ejercicio tras la carga de datos en menos de 2 segundos en condiciones normales; mantener interacción fluida a 60 fps; confirmar un intento sin bloquear la UI.

**Constraints**: Exactamente cuatro opciones por ejercicio; toda ecuación debe ser LaTeX renderizable; los intentos no se confirman si Firestore no confirma la escritura; `SubmitAnswerUseCase` devuelve `Either<Failure, SubmitAnswerResult>`.

**Scale/Scope**: Tres materias, una experiencia inicial de ejercicio por sesión, cuatro opciones por ejercicio y persistencia de intentos; autenticación, autoría de contenido y analítica avanzada quedan fuera de esta feature.

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

*GATE: PASS*

- Flutter y Clean Architecture por feature: respetados mediante la estructura `lib/features/exercitacion_stem/`.
- LaTeX obligatorio: `flutter_math_fork` será la única vía de renderizado de ecuaciones en la UI.
- Firestore y JSON Schema: repositorio y validadores compartirán el contrato documentado en [data-model.md](./data-model.md) y [contracts/firestore.md](./contracts/firestore.md).
- Calidad verificable: pruebas unitarias, de BLoC, de contrato y de integración con emulador estarán definidas antes de implementar.
- Seguridad y configuración: credenciales y configuración Firebase se inyectarán por entorno; no se versionarán secretos.

No hay violaciones constitucionales conocidas. Revisión posterior al diseño: PASS.

## Project Structure

### Documentation (this feature)

```text
specs/001-ejercitacion-stem/
├── plan.md              # This file (/speckit-plan command output)
├── research.md          # Phase 0 output (/speckit-plan command)
├── data-model.md        # Phase 1 output (/speckit-plan command)
├── quickstart.md        # Phase 1 output (/speckit-plan command)
├── contracts/           # Phase 1 output (/speckit-plan command)
└── tasks.md             # Phase 2 output (/speckit-tasks command - NOT created by /speckit-plan)
```

### Source Code (repository root)
<!--
  ACTION REQUIRED: Replace the placeholder tree below with the concrete layout
  for this feature. Delete unused options and expand the chosen structure with
  real paths (e.g., apps/admin, packages/something). The delivered plan must
  not include Option labels.
-->

```text
lib/
├── core/
│   ├── error/
│   ├── firebase/
│   └── validation/
└── features/
  └── exercitacion_stem/
    ├── data/
    │   ├── datasources/
    │   ├── models/
    │   └── repositories/
    ├── domain/
    │   ├── entities/
    │   ├── repositories/
    │   └── usecases/
    └── presentation/
      ├── bloc/
      ├── pages/
      └── widgets/

test/
├── contract/features/exercitacion_stem/
├── integration/features/exercitacion_stem/
└── unit/features/exercitacion_stem/
```

**Structure Decision**: Se selecciona una única aplicación Flutter con estructura Clean Architecture by Feature. `presentation` depende de casos de uso, `domain` no conoce Flutter ni Firebase, y `data` adapta Firestore a interfaces del dominio. BLoC vive en `presentation`; la lógica de envío y el manejo funcional de errores viven en `domain/usecases/submit_answer_use_case.dart`.

## Complexity Tracking

No aplica: el diseño cumple la Constitución sin excepciones.
