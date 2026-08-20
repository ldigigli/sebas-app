# Feature Specification: Módulo de Ejercitación STEM

**Feature Branch**: `001-ejercitacion-stem`

**Created**: 2026-08-20

**Status**: Draft

**Input**: User description: "Crear el módulo de Ejercitación STEM para la app SEBAS. Requerimientos IEEE-830: RF01 selección de materia; RF02 ejercicio con fórmulas LaTeX y 4 opciones; RF03 registro de tiempo y opción elegida; RF04 pista específica del distractor y resolución paso a paso cuando la respuesta es incorrecta."

## User Scenarios & Testing *(mandatory)*

<!--
  IMPORTANT: User stories should be PRIORITIZED as user journeys ordered by importance.
  Each user story/journey must be INDEPENDENTLY TESTABLE - meaning if you implement just ONE of them,
  you should still have a viable MVP (Minimum Viable Product) that delivers value.

  Assign priorities (P1, P2, P3, etc.) to each story, where P1 is the most critical.
  Think of each story as a standalone slice of functionality that can be:
  - Developed independently
  - Tested independently
  - Deployed independently
  - Demonstrated to users independently
-->

### User Story 1 - Seleccionar materia (Priority: P1)

Como alumno, quiero seleccionar Matemática, Física o Química para practicar ejercicios de la materia que necesito estudiar.

**Why this priority**: La selección de materia es la entrada necesaria al módulo y permite orientar todo el ejercicio posterior.

**Independent Test**: Se puede probar abriendo el módulo, seleccionando cada materia disponible y comprobando que la materia elegida queda activa para iniciar la ejercitación.

**Acceptance Scenarios**:

1. **Given** que el alumno abre el módulo, **When** consulta las materias, **Then** ve Matemática, Física y Química como opciones seleccionables.
2. **Given** que el alumno selecciona una materia, **When** confirma la selección, **Then** el sistema inicia una sesión de ejercitación para esa materia.

---

### User Story 2 - Resolver un ejercicio (Priority: P1)

Como alumno, quiero ver un ejercicio STEM con sus fórmulas y cuatro opciones para elegir una respuesta.

**Why this priority**: Es el núcleo de aprendizaje del módulo y entrega la actividad que el alumno debe completar.

**Independent Test**: Se puede probar cargando un ejercicio de cada materia y comprobando que el enunciado, las fórmulas y exactamente cuatro opciones se muestran correctamente.

**Acceptance Scenarios**:

1. **Given** que el alumno inició una sesión, **When** se carga un ejercicio, **Then** el enunciado y todas sus ecuaciones se muestran renderizados en LaTeX.
2. **Given** que el ejercicio está visible, **When** el alumno consulta las respuestas, **Then** ve exactamente cuatro opciones múltiples seleccionables.
3. **Given** que el alumno selecciona una opción, **When** confirma su respuesta, **Then** el sistema evalúa la opción y registra el resultado de la interacción.

---

### User Story 3 - Registrar el intento (Priority: P2)

Como alumno, quiero que mi intento conserve el tiempo empleado y la opción elegida para poder medir mi desempeño.

**Why this priority**: El registro permite analizar el progreso y asegura que cada respuesta quede asociada al ejercicio correcto.

**Independent Test**: Se puede probar respondiendo un ejercicio, verificando que se almacena la opción elegida y que el tiempo registrado corresponde al intervalo del intento.

**Acceptance Scenarios**:

1. **Given** que se muestra un ejercicio, **When** el alumno lo responde, **Then** se registra la opción elegida, la materia, el ejercicio y el tiempo transcurrido.
2. **Given** que el registro se guarda, **When** se consulta el resultado del intento, **Then** el sistema puede identificar si la respuesta fue correcta o incorrecta.

---

### User Story 4 - Recibir retroalimentación (Priority: P2)

Como alumno, quiero recibir una pista relacionada con mi error y ver la resolución paso a paso cuando fallo para entender cómo resolver el ejercicio.

**Why this priority**: La retroalimentación transforma una respuesta incorrecta en una oportunidad de aprendizaje y evita que el módulo sea solo una evaluación.

**Independent Test**: Se puede probar seleccionando un distractor conocido y comprobando que se muestra su pista específica junto con la resolución completa paso a paso.

**Acceptance Scenarios**:

1. **Given** que el alumno eligió una opción incorrecta, **When** el sistema evalúa la respuesta, **Then** muestra la pista asociada específicamente al distractor elegido.
2. **Given** que se mostró una respuesta incorrecta, **When** el alumno consulta la explicación, **Then** ve la resolución paso a paso y las fórmulas en LaTeX.
3. **Given** que el alumno eligió la opción correcta, **When** el sistema evalúa la respuesta, **Then** muestra la confirmación de acierto sin presentar una pista de distractor.

### Edge Cases

- El sistema debe impedir continuar si una materia no está seleccionada.
- Un ejercicio con menos o más de cuatro opciones debe rechazarse antes de mostrarse al alumno.
- Si una ecuación LaTeX no puede renderizarse, el ejercicio no debe presentarse como válido y debe registrarse el error.
- Si falla la conexión durante el registro, el sistema debe informar al alumno y evitar confirmar silenciosamente un intento no guardado.
- Si el alumno abandona el ejercicio sin responder, no debe registrarse como respuesta completada.
- Si falta la pista del distractor elegido o la resolución paso a paso, el contenido debe tratarse como incompleto y no publicarse.

## Requirements *(mandatory)*

### Functional Requirements

- **RF01**: El sistema debe permitir al alumno seleccionar una materia entre Matemática, Física y Química.
- **RF02**: El sistema debe mostrar un ejercicio de la materia seleccionada con sus ecuaciones renderizadas en LaTeX y exactamente cuatro opciones múltiples.
- **RF03**: Al responder, el sistema debe registrar el tiempo empleado y la opción elegida junto con la materia y el ejercicio correspondientes.
- **RF04**: Cuando la respuesta sea incorrecta, el sistema debe mostrar la pista específica del distractor seleccionado y la resolución paso a paso.
- **FR-005**: La interfaz móvil debe implementarse en Flutter siguiendo Clean Architecture organizada por feature.
- **FR-006**: Las ecuaciones de Matemática, Física y Química deben renderizarse siempre con `flutter_math_fork`.
- **FR-007**: Los ejercicios y los intentos deben persistirse en Cloud Firestore cumpliendo estrictamente el JSON Schema definido para ejercicios.
- **FR-008**: El sistema debe validar antes de publicar que cada ejercicio tenga una materia válida, una ecuación renderizable, cuatro opciones, una respuesta correcta, una pista por distractor y una resolución paso a paso.

### Key Entities

- **Materia**: Categoría STEM del ejercicio: Matemática, Física o Química.
- **Ejercicio**: Contenido que presenta el enunciado, las fórmulas LaTeX, cuatro opciones, la respuesta correcta, una pista por distractor y la resolución paso a paso.
- **Intento**: Registro de la interacción del alumno con un ejercicio, incluyendo materia, ejercicio, opción elegida, corrección y tiempo empleado.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: Un alumno puede seleccionar cualquiera de las tres materias e iniciar un ejercicio en menos de 30 segundos en al menos el 95% de los intentos de prueba.
- **SC-002**: El 100% de los ejercicios aprobados para publicación muestra exactamente cuatro opciones y todas sus ecuaciones se renderizan sin errores.
- **SC-003**: El 100% de las respuestas confirmadas conserva la opción elegida y un tiempo empleado válido en el registro del intento.
- **SC-004**: El 100% de las respuestas incorrectas de prueba muestra la pista correspondiente al distractor elegido y una resolución paso a paso.

## Assumptions

- El módulo está dirigido a alumnos que utilizan la aplicación móvil SEBAS.
- La versión inicial cubre únicamente las tres materias indicadas y ejercicios de opción múltiple.
- El JSON Schema de ejercicios existente o aprobado por el proyecto es la fuente de verdad para validar y persistir los datos.
- La infraestructura y las credenciales de Cloud Firestore estarán disponibles para los entornos de desarrollo y prueba.
- La autenticación del alumno, la creación del contenido y la analítica avanzada quedan fuera del alcance de esta especificación salvo que otra especificación las incorpore.
