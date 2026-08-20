# Data Model: Ejercitación STEM

## Materia

Catálogo cerrado de materias disponibles.

| Campo | Tipo | Reglas |
|---|---|---|
| `id` | string | Valores permitidos: `matematica`, `fisica`, `quimica`. |
| `label` | string | Nombre visible de la materia. |

## Ejercicio

Contenido publicado que puede ser presentado al alumno.

| Campo | Tipo | Reglas |
|---|---|---|
| `id` | string | Identificador único del documento. |
| `subjectId` | string | Debe referenciar una Materia válida. |
| `statementLatex` | string | Enunciado; cualquier ecuación se expresa en LaTeX. Obligatorio. |
| `options` | array de 4 objetos | Debe contener exactamente cuatro opciones únicas y ordenadas. |
| `options[].id` | string | Identificador estable de la opción. |
| `options[].labelLatex` | string | Texto o fórmula de la opción; se renderiza con `flutter_math_fork`. |
| `correctOptionId` | string | Debe coincidir con exactamente una opción. |
| `distractorHints` | map string -> string | Debe contener una pista para cada opción incorrecta. Las pistas pueden contener LaTeX. |
| `stepByStepLatex` | array de string | Al menos un paso; cada paso se renderiza con `flutter_math_fork`. |
| `status` | string | `draft` o `published`; solo `published` se muestra al alumno. |
| `createdAt` | timestamp | Generado por servidor. |
| `updatedAt` | timestamp | Generado por servidor. |

### Invariantes

- `options.length == 4`.
- `correctOptionId` pertenece a `options[].id`.
- `distractorHints` contiene una entrada para cada opción cuyo id no es `correctOptionId`.
- Todos los campos LaTeX son cadenas no vacías y pasan la validación de renderizado.
- Un ejercicio incompleto o inválido no puede tener estado `published`.

## Intento

Resultado persistido de una respuesta del alumno.

| Campo | Tipo | Reglas |
|---|---|---|
| `id` | string | Identificador único generado al guardar. |
| `exerciseId` | string | Referencia al Ejercicio presentado. |
| `subjectId` | string | Copia de la materia del ejercicio para consultas y auditoría. |
| `selectedOptionId` | string | Debe pertenecer a las cuatro opciones del ejercicio. |
| `isCorrect` | boolean | Calculado en dominio; no proviene de la UI. |
| `elapsedMilliseconds` | integer | Mayor o igual que 0; representa el tiempo del intento. |
| `submittedAt` | timestamp | Generado por servidor. |

### Transiciones

`exercise_loaded -> submitting -> answered_correctly` o `exercise_loaded -> submitting -> answered_incorrectly`. Un fallo de lectura o escritura produce `failure` y permite reintentar sin afirmar que el intento fue guardado.

## Resultado de SubmitAnswerUseCase

`SubmitAnswerResult` contiene `attempt`, `isCorrect` y `distractorHint` opcional. `distractorHint` es obligatorio cuando `isCorrect == false` y nulo cuando la respuesta es correcta. La resolución paso a paso se obtiene del Ejercicio validado.
