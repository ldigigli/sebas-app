# Research: Ejercitación STEM

## Decision 1: Flutter con Clean Architecture by Feature

**Decision**: Organizar la feature bajo `lib/features/exercitacion_stem/` en capas `data`, `domain` y `presentation`.

**Rationale**: La Constitución hace obligatorio Flutter y Clean Architecture por feature. Separar entidades y casos de uso de Firebase y Flutter permite probar la evaluación de respuestas sin infraestructura y sustituir la fuente de ejercicios sin alterar la UI.

**Alternatives considered**: Una estructura global por tipo (`lib/widgets`, `lib/services`, `lib/models`) se descarta porque mezcla responsabilidades de features y dificulta el crecimiento del módulo.

## Decision 2: BLoC para el flujo de pantalla

**Decision**: Usar un BLoC/Cubit de ejercitación para representar selección de materia, carga, ejercicio disponible, envío, resultado, error y reintento.

**Rationale**: BLoC hace explícitas las transiciones y permite pruebas deterministas de la interacción. El BLoC solo coordina presentación y casos de uso; no contiene consultas directas a Firestore ni reglas de evaluación.

**Alternatives considered**: Estado local con `setState` se descarta para el flujo principal porque mezcla carga, respuesta y errores persistentes en el widget. Un gestor global adicional se descarta por duplicación.

## Decision 3: Firestore detrás de repositorios

**Decision**: Leer ejercicios y guardar intentos mediante `ExerciseRepository` y `AttemptRepository`, con data sources concretos basados en `cloud_firestore`.

**Rationale**: La Constitución exige Cloud Firestore. El repositorio preserva la independencia del dominio y centraliza conversión de documentos, validación del JSON Schema y traducción de excepciones a `Failure`.

**Alternatives considered**: Acceso directo desde BLoC se descarta porque acopla la presentación al proveedor y dificulta probar desconexiones y datos inválidos.

## Decision 4: Dartz en SubmitAnswerUseCase

**Decision**: `SubmitAnswerUseCase` devolverá `Future<Either<Failure, SubmitAnswerResult>>`; validará la respuesta, calculará corrección, seleccionará la pista del distractor cuando corresponda y persistirá el intento.

**Rationale**: `Either` obliga a tratar explícitamente éxito y fallo, evitando excepciones como control normal de flujo. El caso de uso concentra la lógica que debe ser independiente de Flutter y BLoC.

**Alternatives considered**: Excepciones propagadas hasta el BLoC se descartan porque ocultan el contrato de errores y hacen más frágiles las pruebas.

## Decision 5: Renderizado LaTeX

**Decision**: La UI usará `flutter_math_fork` para cada fragmento o fórmula LaTeX del enunciado, opciones, pistas y resolución.

**Rationale**: Es una regla no negociable de la Constitución y garantiza una representación consistente de Matemática, Física y Química.

**Alternatives considered**: Texto plano, Markdown sin motor matemático o widgets específicos por materia se descartan porque no cumplen el requisito de LaTeX.

## Decision 6: Validación y pruebas

**Decision**: Validar invariantes del ejercicio antes de presentarlo y cubrir dominio con `flutter_test`, BLoC con `bloc_test`, contratos con fixtures y persistencia con Firebase Emulator Suite.

**Rationale**: Las cuatro opciones, las fórmulas renderizables y la pista por distractor son invariantes de publicación; la escritura de intentos requiere una prueba realista de Firestore sin depender de producción.

**Alternatives considered**: Pruebas manuales únicamente se descartan porque no garantizan RF03/RF04 de forma reproducible.
