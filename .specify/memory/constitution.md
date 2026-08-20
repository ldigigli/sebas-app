# sebas-app Constitution

## Core Principles

> **Principios de SEBAS:**
>
> 1. Toda la interfaz móvil debe construirse en **Flutter** usando **Clean Architecture (by Feature)**.
> 2. Las ecuaciones de Matemática, Física y Química **siempre** deben renderizarse en **LaTeX** usando `flutter_math_fork`.
> 3. La base de datos es **Cloud Firestore** y debe cumplir estrictamente con el **JSON Schema** definido para ejercicios.

## Additional Constraints

- Las nuevas dependencias deben ser necesarias, mantenidas y compatibles con la licencia del proyecto.
- Las operaciones costosas deben tener límites y un comportamiento explícito ante fallos o tiempos de espera.
- La configuración específica de cada entorno debe mantenerse fuera del código fuente cuando contenga valores sensibles o variables de despliegue.

## Development Workflow

1. Toda iniciativa comienza con una especificación clara de objetivos, alcance, criterios de aceptación y restricciones.
2. Antes de implementar, se identifican riesgos técnicos, dependencias, cambios de contrato y estrategia de pruebas.
3. La implementación se realiza en cambios pequeños y revisables, manteniendo la trazabilidad entre requisitos, código y validaciones.
4. Antes de integrar un cambio deben pasar las pruebas y comprobaciones automatizadas disponibles, además de una revisión de seguridad y accesibilidad cuando apliquen.

## Governance

Esta constitución define los criterios mínimos de calidad del proyecto y prevalece sobre prácticas locales contradictorias. Cada pull request debe indicar cómo cumple los principios relevantes o por qué una excepción es necesaria. Las excepciones requieren documentar el motivo, el riesgo aceptado y, cuando corresponda, una tarea de seguimiento.

Las modificaciones de esta constitución deben actualizar la versión, la fecha de enmienda y explicar su impacto en las especificaciones o el código existente. Las versiones mayores indican cambios incompatibles en los principios; las menores incorporan principios o reglas nuevas; las revisiones de redacción incrementan el último componente.

**Version**: 1.1.0 | **Ratified**: 2026-08-20 | **Last Amended**: 2026-08-20
