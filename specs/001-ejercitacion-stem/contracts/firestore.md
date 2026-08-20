# Contract: Cloud Firestore

## Collections

### `exercises/{exerciseId}`

Documentos de ejercicios según [data-model.md](../data-model.md). La app cliente solo consulta documentos `status == "published"`. La publicación y edición de contenido quedan fuera del alcance de esta feature.

Required query shape:

```text
exercises.where(subjectId, ==, selectedSubjectId).where(status, ==, published)
```

El adaptador debe validar que el documento tenga cuatro opciones, una respuesta correcta, pistas para todos los distractores y pasos de resolución antes de convertirlo a entidad de dominio.

### `attempts/{attemptId}`

Documento de intento según [data-model.md](../data-model.md). `SubmitAnswerUseCase` crea el documento después de calcular `isCorrect`; el cliente no puede enviar un valor de corrección arbitrario.

## Write Contract

```json
{
  "exerciseId": "string",
  "subjectId": "matematica|fisica|quimica",
  "selectedOptionId": "string",
  "isCorrect": "boolean",
  "elapsedMilliseconds": "integer >= 0",
  "submittedAt": "server timestamp"
}
```

## Error Mapping

| Firestore condition | Domain failure |
|---|---|
| No hay ejercicio publicado | `NoExerciseAvailableFailure` |
| Documento inválido | `InvalidExerciseFailure` |
| Permiso denegado | `PermissionFailure` |
| Sin conexión o timeout | `PersistenceFailure` |
| Opción no pertenece al ejercicio | `InvalidAnswerFailure` |

## Security Expectations

- Las reglas de Firestore deben impedir que el cliente modifique ejercicios publicados.
- Los intentos solo deben poder crearse para el usuario autenticado correspondiente cuando exista autenticación.
- No se guardan secretos ni credenciales en los documentos.
- Las pruebas de contrato se ejecutan contra Firebase Emulator Suite.
