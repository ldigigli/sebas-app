# Tasks: Módulo de Ejercitación STEM

**Input**: Design documents from `/specs/001-ejercitacion-stem/`

**Prerequisites**: `plan.md`, `spec.md`, `research.md`, `data-model.md`, `contracts/firestore.md`, `quickstart.md`

**Organization**: Tasks are grouped by user story and ordered by dependency. Tests are included because the specification requires behavior reproducible through automated validation.

## Phase 1: Setup (Shared Infrastructure)

**Purpose**: Inicializar la aplicación Flutter y sus dependencias.

- [X] T001 Crear la aplicación Flutter base con `pubspec.yaml`, `lib/main.dart`, `test/` y configuración móvil mínima.
- [X] T002 [P] Configurar dependencias Flutter/Firebase/BLoC/Dartz en `pubspec.yaml`.
- [X] T003 [P] Crear `.gitignore` con artefactos Flutter, Firebase y secretos de entorno.
- [X] T004 [P] Crear `analysis_options.yaml` con reglas de análisis Dart consistentes.

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: Infraestructura de dominio y datos que bloquea todas las historias.

- [X] T005 Crear `lib/core/error/failures.dart` con fallos tipados para validación, persistencia y disponibilidad.
- [X] T006 [P] Crear entidades `Subject`, `Exercise`, `ExerciseOption` y `Attempt` en `lib/features/exercitacion_stem/domain/entities/`.
- [X] T007 [P] Crear contratos `ExerciseRepository` y `AttemptRepository` en `lib/features/exercitacion_stem/domain/repositories/`.
- [X] T008 Crear `lib/features/exercitacion_stem/domain/usecases/submit_answer_use_case.dart` con `Either<Failure, SubmitAnswerResult>`.
- [X] T009 Crear `lib/features/exercitacion_stem/data/models/` con serialización y validación estricta de ejercicios e intentos.
- [X] T010 Crear data sources Firestore y repositorios concretos en `lib/features/exercitacion_stem/data/`.
- [X] T011 [P] Crear validación JSON Schema de ejercicios en `lib/core/validation/exercise_schema_validator.dart`.
- [X] T012 [P] Crear configuración Firebase aislada por entorno en `lib/firebase_options.dart` sin secretos versionados.

**Checkpoint**: Dominio, contratos, validación y persistencia están disponibles para las historias.

## Phase 3: User Story 1 - Seleccionar materia (Priority: P1)

**Goal**: El alumno selecciona Matemática, Física o Química e inicia la sesión.

**Independent Test**: Seleccionar cada materia muestra el estado activo y solicita un ejercicio de esa materia.

### Tests for User Story 1

- [X] T013 [P] [US1] Probar el catálogo de materias y sus identificadores en `test/unit/features/exercitacion_stem/domain/entities/subject_test.dart`.
- [X] T014 [P] [US1] Probar carga de ejercicios filtrada por materia en `test/unit/features/exercitacion_stem/data/exercise_repository_test.dart`.
- [X] T015 [US1] Probar selección y carga inicial del BLoC en `test/unit/features/exercitacion_stem/presentation/exercitacion_bloc_test.dart`.

### Implementation for User Story 1

- [X] T016 [P] [US1] Implementar `GetExerciseUseCase` en `lib/features/exercitacion_stem/domain/usecases/get_exercise_use_case.dart`.
- [X] T017 [US1] Implementar `ExercitacionBloc` con eventos de selección y estados de carga en `lib/features/exercitacion_stem/presentation/bloc/exercitacion_bloc.dart`.
- [X] T018 [US1] Crear pantalla de selección y ejercicio en `lib/features/exercitacion_stem/presentation/pages/exercitacion_page.dart`.
- [X] T019 [P] [US1] Crear selector de materia en `lib/features/exercitacion_stem/presentation/widgets/subject_selector.dart`.

**Checkpoint**: La selección de las tres materias inicia una sesión independiente.

## Phase 4: User Story 2 - Resolver un ejercicio (Priority: P1)

**Goal**: Mostrar un ejercicio válido, sus fórmulas LaTeX y exactamente cuatro opciones.

**Independent Test**: Un fixture de cada materia se muestra con cuatro opciones y ecuaciones renderizadas por `flutter_math_fork`.

### Tests for User Story 2

- [X] T020 [P] [US2] Probar invariantes de cuatro opciones y respuesta correcta en `test/unit/features/exercitacion_stem/data/exercise_model_test.dart`.
- [X] T021 [P] [US2] Probar renderizado de enunciado y opciones LaTeX en `test/widget/features/exercitacion_stem/exercise_view_test.dart`.

### Implementation for User Story 2

- [X] T022 [P] [US2] Crear `LatexText` basado en `flutter_math_fork` en `lib/features/exercitacion_stem/presentation/widgets/latex_text.dart`.
- [X] T023 [P] [US2] Crear `OptionCardWidget` en `lib/features/exercitacion_stem/presentation/widgets/option_card_widget.dart`.
- [X] T024 [US2] Integrar enunciado, pasos, cuatro opciones y selección en `exercitacion_page.dart`.
- [X] T025 [US2] Rechazar ejercicios inválidos antes de la presentación y mapear el error a UI en `ExercitacionBloc`.

**Checkpoint**: El alumno puede leer y seleccionar una opción válida sin ecuaciones en texto plano.

## Phase 5: User Story 3 - Registrar el intento (Priority: P2)

**Goal**: Guardar opción elegida, materia, ejercicio, corrección y tiempo.

**Independent Test**: Confirmar una opción crea un documento `attempts` conforme al contrato Firestore.

### Tests for User Story 3

- [X] T026 [P] [US3] Probar `SubmitAnswerUseCase` para aciertos, distractores y tiempos inválidos en `test/unit/features/exercitacion_stem/domain/submit_answer_use_case_test.dart`.
- [X] T027 [P] [US3] Probar escritura del intento y traducción de errores Firestore en `test/contract/features/exercitacion_stem/attempt_repository_contract_test.dart`.

### Implementation for User Story 3

- [X] T028 [US3] Implementar cálculo de tiempo monotónico y evento de envío en `exercitacion_bloc.dart`.
- [X] T029 [US3] Implementar persistencia de `AttemptModel` en `firestore_attempt_repository.dart`.
- [X] T030 [US3] Conectar `SubmitAnswerUseCase` al BLoC con estado de envío, éxito y fallo recuperable.

**Checkpoint**: Un intento confirmado conserva la opción y el tiempo sin bloquear la interfaz.

## Phase 6: User Story 4 - Recibir retroalimentación (Priority: P2)

**Goal**: Mostrar pista específica del distractor y resolución paso a paso tras un fallo.

**Independent Test**: Elegir cada distractor muestra su pista correspondiente y la resolución completa en LaTeX.

### Tests for User Story 4

- [X] T031 [P] [US4] Probar selección exacta de pista por distractor en `test/unit/features/exercitacion_stem/domain/distractor_feedback_test.dart`.
- [X] T032 [P] [US4] Probar estados de respuesta correcta, incorrecta y error de envío en `test/unit/features/exercitacion_stem/presentation/feedback_bloc_test.dart`.

### Implementation for User Story 4

- [X] T033 [US4] Completar `SubmitAnswerResult` con pista opcional y resolución en `submit_answer_use_case.dart`.
- [X] T034 [P] [US4] Crear `FeedbackPanel` accesible en `lib/features/exercitacion_stem/presentation/widgets/feedback_panel.dart`.
- [X] T035 [US4] Mostrar pista del distractor y pasos LaTeX después del envío en `exercitacion_page.dart`.

**Checkpoint**: Cada respuesta incorrecta ofrece una explicación pedagógica específica.

## Phase 7: Polish & Cross-Cutting Concerns

- [X] T036 [P] Añadir pruebas de integración de flujo completo en `test/integration/features/exercitacion_stem/exercitacion_flow_test.dart`.
- [X] T037 [P] Añadir reglas y fixtures del emulador Firestore en `firebase/firestore.rules` y `test/fixtures/exercitacion_stem/`.
- [X] T038 Revisar accesibilidad, estados vacío/error/carga y navegación en la pantalla de ejercitación.
- [X] T039 Ejecutar `flutter analyze`, `flutter test` y la validación de `quickstart.md`; corregir hallazgos en los archivos afectados.
- [X] T040 Actualizar `README.md` con requisitos de Flutter, Firebase Emulator Suite y comandos de validación.

## Dependencies & Execution Order

### Phase Dependencies

- Phase 1 no depende de otras fases.
- Phase 2 depende de Phase 1 y bloquea todas las historias.
- US1 y US2 son P1; ambas dependen de Phase 2 y pueden paralelizarse después de sus contratos base.
- US3 depende de las entidades y del flujo de respuesta de US1/US2.
- US4 depende del resultado de envío de US3, aunque sus pruebas de dominio pueden comenzar con fixtures.
- Polish depende de las cuatro historias.

### Parallel Opportunities

- T002-T004 pueden ejecutarse en paralelo.
- T006, T007, T011 y T012 pueden ejecutarse en paralelo.
- Las pruebas independientes de cada historia están marcadas `[P]`.
- T022 y T023 pueden ejecutarse en paralelo.
- T034 y T036-T037 pueden ejecutarse en paralelo cuando el contrato esté estable.

## Implementation Strategy

### MVP

1. Completar Setup y Foundation.
2. Implementar US1 para seleccionar materia y cargar un ejercicio.
3. Implementar US2 para mostrar cuatro opciones y LaTeX.
4. Validar el flujo antes de avanzar al registro y la retroalimentación.

### Incremental Delivery

1. US1 + US2 entregan el recorrido mínimo de lectura y selección.
2. US3 añade persistencia y medición del intento.
3. US4 añade aprendizaje guiado mediante pistas y resolución.
4. Polish endurece integración, accesibilidad, reglas Firestore y documentación.
