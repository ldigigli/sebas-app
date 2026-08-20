Proyecto Sistemas SEBAS - Tu asistente Universitario______________________________________________________________________________                                  
                                                                                                                                        
  
  
  
  
  
  
  
  

Índice
Í
Diagrama de Gantt y Planificación Temporal - Proyecto SEBAS 2026
1. Desglose Estructural de Fases y Tareas        4
2. Distribución Cruzada y Justificación Operativa        5
Informe de estudio de factibilidad técnica, económica, operativa, legal y temporal
Introducción        8
1. FACTIBILIDAD TÉCNICA        9
2. FACTIBILIDAD ECONOMICA        10
Matriz de Distribución de Costos e Inversión Horaria        11
Beneficios Esperados        11
3. FACTIBILIDAD OPERATIVA        12
4. FACTIBILIDD LEGAL        14
5. FACTIBILIDAD TEMPORAL        15
6. CONCLUSIÓN GENERAL DEL ESTUDIO        16
Glosario:        17
Estándar de Referencia: IEEE 830-1998
Ficha del documento        18
1. INTRODUCCIÓN        21
1.1 Propósito        18
1.2 Alcance        19
1.3 Personal Involucrado        19
1.4 Definiciones, Acrónimos y Abreviaturas        20
1.5 Referencias        20
1.6 Resumen        20
2. DESCRIPCIÓN GENERAL        21
2.1 Perspectiva del Producto        21
2.2 Funcionalidad del Producto (Ciclo de Vida del Estudiante)        21
2.3 Características de los Usuarios        21
2.4 Restricciones        22
2.5 Suposiciones y Dependencias        22
2.6 Evolución Previsible del Sistema        22
2.7 Vistas de la Plataforma SEBAS         23
Inicio de sesión:        23
 Panel Principal y Herramientas        24
 Progreso y Contenidos Detallados        25
3. REQUISITOS ESPECÍFICOS        26
3.1 Requisitos Funcionales         26
Módulo de Autenticación, Registro y Perfilería de Alumnos................................26
Módulo de Ejercitación e Interactividad Curricular (STEM)..................................27
Módulo del Motor de Inteligencia Artificial Adaptativa e Híbrida........................27
Módulo de Gamificación, Retención y Motivación de Usuarios...........................28
Módulo de Reportería, Visualización y Seguimiento Docente..............................28
Módulo de Ayuda, Soporte e Integración Técnica................................................28
3.2 Requisitos No Funcionales        29
3.2.1 Seguridad e Integridad de la Información        29
3.2.2 Usabilidad y Diseño Centrado en el Alumno        29
3.2.3 Rendimiento y Eficiencia Operacional        29
3.2.4 Disponibilidad y Resiliencia Continua        29
3.2.5 Mantenibilidad y Portabilidad        30
4. APÉNDICES        30
REQUERIMIENTOS FUNCIONALES — PROYECTO SEBAS        32
REQUERIMIENTOS NO FUNCIONALES — PROYECTO SEBAS        38


































  

Diagrama de Gantt y Planificación Temporal - Proyecto SEBAS 2026
Lineamiento estructural del cronograma para el Sistema de Ejercitación y Entrenamiento en Ciencias Básicas (SEBAS). El proyecto abarca un período total de 10 meses de ejecución efectiva (de marzo a diciembre de 2026) con una carga horaria total estimada de 200 horas de esfuerzo distribuidas equitativamente entre los tres integrantes del equipo: Leonel Digiglio, Camila Tamburrino y Pamela Nuñez.


1. Desglose Estructural de Fases y Tareas
A continuación, se detalla la secuencia lógica de las 8 fases fundamentales del proyecto, indicando su marco temporal, el esfuerzo estimado, las dependencias específicas y los dueños asignados en base a las matrices de distribución técnica y operativa.






Fase / ID Tarea
	Descripción de la Tarea / Entregables
	Meses Activos
	Duración
	Esfuerzo
	Dependencias
	Dueños Respons.
	F1. 
Empatía y Definición
	Entrevistas cualitativas, construcción de Mapas de Empatía consolidados, análisis de la problemática de deserción STEM y documentación de la visión del producto bajo metodología Working Backwards.
	Marzo - abril 2026
	2 meses
	30 hs
	Ninguna (Inicio)
	Leonel Digiglio


Camila Tamburrino


Pamela Nuñez
	F2. Arquitectura y Requisitos
	Redacción de la Especificación de Requisitos de Software (IEEE 830: RF y RNF). Diseño técnico de la Arquitectura Cloud Serverless y modelado estructural de la base de datos NoSQL.
	Mayo 2026
	1 mes
	25 hs
	F1 Finalizada
	Leonel Digiglio


Pamela Nuñez
	F3. 
Diseño y Anteproyecto
	Diseño de wireframes y prototipos de alta fidelidad para la interfaz móvil (UI/UX), definición del árbol de correlatividades pedagógicas, esquemas JSON de prompts y presentación del Anteproyecto formal.
	Junio 2026
	1 mes
	25 hs
	F2 Finalizada
	Camila Tamburrino
	F4. 
Desarrollo Core y Auth
	Configuración y despliegue del entorno nativo Android, integración de la autenticación centralizada mediante Firebase Auth y programación del esquema base de navegación móvil.
	Julio - agosto 2026
	2 meses
	25 hs
	F3 Aprobada
	Leonel Digiglio


Pamela Nuñez
	F5. 
Banco de Contenidos
	Estructuración, dosificación y carga inicial en la base de datos documental de los ejercicios interactivos de Ciencias Exactas (Matemática, Física y Química). Programación de lógica de feedback inmediato.
	Septiembre 2026
	1 mes
	25 hs
	F4 Finalizada
	Camila Tamburrino


Pamela Nuñez
	F6. Gamificación y Dashboard
	Codificación de las mecánicas de retención y motivación (rachas diarias, insignias, progresión de niveles). Desarrollo del Dashboard visual de métricas de avance estudiantil.
	Octubre 2026
	1 mes
	25 hs
	F5 Funcional
	Camila Tamburrino


Leonel Digiglio
	F7.
 Motor de IA Adaptativa
	Integración de la API de OpenAI (GPT-4o mini) utilizando estructuración estricta en JSON. Calibración de algoritmos probabilísticos y adaptabilidad (esquemas tipo IRT o ELO).
	Noviembre 2026






	1 mes
	25 hs
	F4 y F6 Estables
	Leonel Digiglio


Pamela Nuñez
	F8. 
QA, Cierre y Defensa
	Pruebas unitarias de campo con grupos de control (medición de latencias, consistencia de la IA, manejo offline parcial), corrección de bugs, redacción de documentación final y defensa del proyecto.
	Diciembre 2026
	1 mes
	20 hs
	F7 Finalizada
	Leonel Digiglio


Camila Tamburrino


Pamela Nuñez
	

2. Distribución Cruzada y Justificación Operativa
Para mitigar los riesgos de capacidad identificados en la factibilidad operativa, la carga horaria se ha equilibrado estrictamente. Ningún integrante trabaja de manera aislada en los componentes críticos:


* Línea Tecnológica e Infraestructura: Liderada por Leonel Digiglio, enfocándose en la integración de APIs, seguridad (Firebase Auth) y arquitectura serverless.


* Línea Pedagógica y Experiencia de Usuario: Liderada por Camila Tamburrino, quien se responsabiliza del diseño de interfaz, usabilidad orientada a adultos y las mecánicas de gamificación.


* Línea de Datos y Modelado Probabilístico: Liderada por Pamela Nuñez, con foco en la base de datos NoSQL, el grafo de prerrequisitos de conocimiento y los algoritmos matemáticos adaptativos.


Las fases de inicio (F1) y de cierre (F8) comprometen al 100% del equipo para asegurar la alineación estratégica inicial y el control de calidad integral previo a la entrega.


  

  

  

  

































  



INFORME DE ESTUDIO DE FACTIBILIDAD TÉCNICA, ECONÓMICA, OPERATIVA, LEGAL Y TEMPORAL


Introducción
Antes de comenzar el desarrollo de SEBAS, resulta necesario realizar un estudio de factibilidad que permita evaluar la viabilidad del proyecto desde distintos aspectos. Este análisis tiene como finalidad determinar si la solución propuesta puede desarrollarse con los recursos disponibles, dentro de los tiempos previstos y de acuerdo con las necesidades identificadas en los futuros usuarios.
El presente informe analiza la factibilidad técnica, económica, operativa, legal y temporal del proyecto. SEBAS (Sistema de Ejercitación y Entrenamiento en Ciencias Básicas) es una aplicación móvil orientada a estudiantes que ingresan a carreras universitarias de Ingeniería y Licenciaturas, cuyo objetivo es acompañar el proceso de nivelación en materias como Matemática, Álgebra, Física y Química mediante ejercicios interactivos, seguimiento del progreso y mecanismos de aprendizaje adaptativo. La propuesta surge a partir de una problemática identificada durante la investigación realizada para el proyecto, donde varios estudiantes manifestaron dificultades para adaptarse a las exigencias académicas de la universidad, especialmente en las materias de ciencias básicas, situación que en algunos casos genera desmotivación e incluso el abandono de los estudios.
En este contexto, SEBAS busca reducir la brecha existente entre la formación secundaria y las demandas del ámbito universitario, brindando una herramienta de apoyo accesible que favorezca la práctica constante, el seguimiento del progreso y el fortalecimiento de los conocimientos necesarios para afrontar el ciclo inicial de las carreras.
Asimismo, este estudio permite identificar posibles riesgos, estimar los recursos necesarios para su implementación y evaluar si el proyecto resulta conveniente y viable antes de iniciar las etapas de desarrollo y pruebas.


1. FACTIBILIDAD TÉCNICA
El proyecto SEBAS se desarrollará como una aplicación móvil para dispositivos con sistema operativo Android, buscando garantizar compatibilidad con la mayoría de los teléfonos inteligentes utilizados actualmente por los estudiantes. Para su implementación se seleccionaron tecnologías ampliamente utilizadas y con documentación disponible, permitiendo construir una solución escalable, segura y de bajo costo operativo.


Las principales tecnologías previstas para el desarrollo de SEBAS son las siguientes:


* Equipos Necesarios (Hardware):
 Los estudiantes accederán a SEBAS desde sus propios celulares Android. No se requiere ningún equipamiento adicional por parte de la universidad. La aplicación está diseñada para funcionar correctamente en dispositivos de uso cotidiano.


* Programas y Herramientas (Software):
El sistema utilizará Firebase Firestore o MongoDB Atlas para el almacenamiento de datos, Google Cloud Functions o AWS Lambda para el backend, y mecanismos de adaptación basados en algoritmos IRT/ELO. Se evaluará además la integración con la API de OpenAI para retroalimentación personalizada.


* Frontend (Aplicación móvil):
La aplicación será desarrollada para dispositivos Android mediante herramientas de desarrollo nativas. Se buscará implementar una interfaz intuitiva y accesible, adaptada a distintos perfiles de usuarios, incluyendo estudiantes jóvenes y adultos que retoman sus estudios. El diseño priorizará la facilidad de navegación, la legibilidad de los contenidos y una experiencia de uso simple y amigable.


* Backend (Servicios en la nube):
La lógica del sistema se implementará mediante servicios en la nube utilizando plataformas como Google Cloud Functions o AWS Lambda. Este enfoque permite ejecutar procesos únicamente cuando son necesarios, optimizando el consumo de recursos y reduciendo costos de infraestructura.


* Base de datos:
Para el almacenamiento de la información se evaluará el uso de bases de datos NoSQL como Firebase Firestore o MongoDB Atlas. Estas herramientas permiten gestionar de manera eficiente los datos de los usuarios, el progreso académico, las estadísticas de uso y el banco de ejercicios de la plataforma.


* Motor adaptativo de aprendizaje:
El sistema incorporará mecanismos de adaptación que permitan ajustar la dificultad de los ejercicios en función del desempeño del estudiante. Para ello se analizará la utilización de algoritmos basados en reglas de negocio, modelos probabilísticos como IRT o sistemas de puntuación tipo ELO. Asimismo, se evaluará la integración de servicios de inteligencia artificial para complementar la personalización del aprendizaje y la generación de retroalimentación al usuario.


* Documentación y mantenimiento:
Toda la solución contará con documentación técnica y funcional que facilite futuras tareas de mantenimiento, actualización y ampliación del sistema
Requisitos mínimos del dispositivo y conectividad:  La aplicación requerirá un dispositivo Android con versión 8.0 (Oreo), que representa la gran mayoría de los teléfonos en uso actualmente. Para el funcionamiento completo de las funciones adaptativas e inteligencia artificial se necesitará conexión a internet, aunque se evaluará la posibilidad de permitir la resolución de ejercicios en modo offline con sincronización posterior.


El equipo está compuesto por estudiantes de la carrera Licenciatura en Administración de Sistemas, por lo que el proyecto no es llevado adelante por desarrolladores de software profesionales. Para afrontar la implementación, se prevé el uso de herramientas de desarrollo asistido y la asistencia de inteligencia artificial, que permitirán construir la solución dentro de las capacidades actuales del equipo. Si bien tecnologías como la integración con la API de OpenAI o los algoritmos IRT/ELO representan una curva de aprendizaje, se considera un riesgo manejable dado el tiempo disponible, la documentación existente y las herramientas de apoyo con las que se cuenta.


El proyecto presenta factibilidad técnica, ya que las tecnologías seleccionadas están ampliamente documentadas, cuentan con comunidades activas y son accesibles para equipos con perfil técnico-administrativo. Esto permite afrontar el desarrollo con un nivel de riesgo aceptable para el alcance del proyecto.


  



2. FACTIBILIDAD ECONOMICA
La factibilidad económica del proyecto SEBAS resulta favorable dado que gran parte de las herramientas necesarias para su desarrollo cuentan con versiones gratuitas o de bajo costo. Para la implementación se prevé el uso de tecnologías como Android Studio, Firebase, GitHub y servicios en la nube que ofrecen planes gratuitos suficientes para las etapas de desarrollo, pruebas y validación inicial del sistema.


El equipo de trabajo dispone de los recursos básicos necesarios para llevar adelante el proyecto: computadoras personales, acceso a internet y los conocimientos adquiridos a lo largo de la carrera universitaria. No se prevén inversiones significativas en infraestructura o equipamiento adicional, lo que reduce considerablemente el riesgo económico del proyecto.


A efectos de estimar el esfuerzo de desarrollo, se realizó una proyección de aproximadamente 200 horas de trabajo distribuidas entre las actividades de relevamiento, análisis, diseño, programación, pruebas y documentación. Considerando una tarifa de referencia para proyectos de software de pequeña escala, el valor estimado del desarrollo asciende a USD 4.500. Este valor representa el esfuerzo del equipo y no implica una erogación real de dinero, ya que el proyecto se desarrolla íntegramente en el marco académico de la materia Proyecto de Sistemas y no cuenta con financiamiento externo.


Es importante aclarar que las tecnologías seleccionadas — Firebase, AWS Lambda, MongoDB Atlas y la API de OpenAI — ofrecen capas gratuitas que se estiman suficientes para la escala del proyecto durante las etapas de desarrollo y pruebas. Sin embargo, en una eventual implementación institucional a mayor escala, los costos de operación y mantenimiento podrían incrementarse y deberían ser evaluados en ese momento, ya sea a través del financiamiento universitario u otros mecanismos que garanticen el acceso gratuito para los estudiantes.






Matriz de Distribución de Costos e Inversión Horaria


El uso de tecnologías de código abierto y servicios en la nube bajo demanda permite reducir significativamente los costos de infraestructura y eliminar la necesidad de adquirir licencias de software comerciales. Los costos asociados al uso de servicios de inteligencia artificial se estiman bajos para el volumen de consultas proyectado durante la etapa inicial, aunque este punto será validado durante el desarrollo.


Beneficios Esperados


Los siguientes beneficios son proyecciones basadas en el relevamiento realizado y en el análisis de herramientas similares. Al tratarse de un proyecto en etapa de desarrollo, estos resultados son estimaciones que deberán validarse con usuarios reales durante las pruebas de campo:


Reducción de la carga de tutorías: el motor adaptativo buscaría automatizar parte de la retroalimentación, lo que podría reducir la demanda de consultas docentes fuera del aula.
Acompañamiento en el primer año: se espera que el acceso a ejercitación personalizada contribuya a sostener la motivación de los estudiantes en el período de mayor riesgo de abandono.
Trazabilidad del progreso: de implementarse el módulo de seguimiento, las instituciones podrían visualizar el avance de los estudiantes por materia y detectar dificultades de forma temprana.
Visibilidad para docentes: se evaluará la incorporación de un panel para docentes y coordinadores que permita monitorear la actividad dentro de la plataforma.




























  





3. FACTIBILIDAD OPERATIVA
La factibilidad operativa de SEBAS se sustenta en la existencia de una problemática real identificada durante la etapa de relevamiento e investigación del proyecto. A través de entrevistas realizadas a estudiantes ingresantes, alumnos que cursaron el ciclo básico universitario, adultos que retoman sus estudios y docentes universitarios, se detectaron dificultades vinculadas con la adaptación a las exigencias académicas de la universidad, especialmente en materias de ciencias básicas como Matemática, Física y Química.


Los resultados obtenidos evidenciaron que muchos estudiantes perciben una importante diferencia entre los contenidos adquiridos en la escuela secundaria y los requeridos en el ámbito universitario. Esta situación genera inseguridad, desmotivación y, en algunos casos, el abandono de los estudios durante los primeros años de la carrera. Asimismo, se identificó la necesidad de contar con herramientas accesibles que permitan reforzar conocimientos, practicar ejercicios y realizar un seguimiento del progreso académico.


SEBAS busca responder a estas necesidades mediante una aplicación móvil de fácil acceso que combina ejercitación, seguimiento personalizado y mecanismos de aprendizaje adaptativo. Además, la incorporación de elementos de gamificación, como puntos, logros y rachas de estudio, pretende favorecer la motivación y la continuidad en el proceso de aprendizaje.


Desde el punto de vista organizacional, la implementación de la solución no requiere modificaciones significativas en la estructura de las instituciones educativas ni demanda equipamiento especial por parte de los usuarios, ya que la plataforma podrá utilizarse desde dispositivos móviles de uso cotidiano.


El desarrollo del proyecto será gestionado mediante metodologías ágiles, permitiendo realizar entregas parciales y validaciones periódicas que faciliten la adaptación a posibles cambios o mejoras detectadas durante el proceso.


La factibilidad operativa, ya que responde a una necesidad identificada en el público objetivo, ofrece una solución acorde a las características de los usuarios y puede implementarse sin generar cambios significativos en los procesos habituales de estudio. Asimismo, las entrevistas realizadas muestran una aceptación potencial favorable. 


Las entrevistas realizadas mostraron una aceptación potencial muy favorable. Florencia comentó que cuando tiene dudas recurre a YouTube o ChatGPT pero siente que "no es lo mismo que tener algo ordenado para estudiar". Juan mencionó que una herramienta así le hubiera dado más confianza al momento de retomar. Y Laura fue la más directa: "Si hubiera tenido algo así, me hubiera ayudado un montón." Estas respuestas indican que los usuarios no solo reconocen el problema, sino que estarían dispuestos a incorporar una herramienta de este tipo en su rutina de estudio.




  





4. FACTIBILIDAD LEGAL
El funcionamiento de SEBAS implica el registro, almacenamiento y procesamiento de información de los usuarios, por lo que el proyecto deberá contemplar el cumplimiento de la normativa vigente en materia de protección de datos personales.


Protección de datos personales: La aplicación deberá respetar los principios establecidos por la Ley N.º 25.326 de Protección de Datos Personales de la República Argentina. Los datos registrados por los usuarios serán utilizados únicamente para el funcionamiento de la plataforma y con fines académicos. Además, se deberán implementar medidas de seguridad para proteger la información almacenada y evitar accesos no autorizados.




Uso de datos académicos: El sistema podrá registrar información vinculada al progreso del estudiante, como respuestas, tiempos de resolución, nivel de avance y desempeño en los ejercicios. Estos datos deberán utilizarse únicamente para personalizar la experiencia de aprendizaje y generar estadísticas internas, evitando recopilar información que no sea necesaria para el objetivo del sistema.


Propiedad intelectual: Los contenidos educativos incorporados en la aplicación, como ejercicios, explicaciones y materiales de apoyo, deberán respetar los derechos de autor correspondientes. Asimismo, el desarrollo de la aplicación, incluyendo su diseño, código fuente y documentación, será considerado propiedad intelectual de sus autores, de acuerdo con las condiciones establecidas por la institución educativa en el marco del Proyecto Final.


El proyecto presenta factibilidad legal, ya que no se identifican restricciones normativas que impidan su desarrollo. De todos modos, su implementación deberá contemplar la protección de los datos personales de los usuarios, el uso responsable de la información académica y el respeto por la propiedad intelectual de los contenidos utilizados.


  

5. FACTIBILIDAD TEMPORAL


El desarrollo del proyecto SEBAS se planifica en un período de diez meses, distribuidos en ocho etapas que abarcan desde el relevamiento inicial hasta la defensa final del sistema en diciembre de 2026.


* Marzo–Abril (Fase 1) — Relevamiento y análisis: Realización de entrevistas, elaboración del mapa de empatía, análisis de la problemática y definición de los contenidos que formarán parte de la plataforma.
* Mayo (Fase 2) — Diseño y especificación: Definición de requisitos, arquitectura serverless, documentación funcional y diseño del modelo de datos NoSQL.
* Junio (Fase 3) — Prototipado UI/UX: Diseño de alta fidelidad de las pantallas principales y prototipado interactivo. Hito: entrega del Anteproyecto.
* Julio–Agosto (Fase 4) — Desarrollo core: Implementación del núcleo Android, autenticación de usuarios (Firebase Auth) y estructura base de la aplicación.
* Septiembre (Fase 5) — Contenidos y retroalimentación: Carga del banco de ejercicios STEM y lógica de retroalimentación inmediata al estudiante.
* Octubre (Fase 6) — Gamificación y dashboard: Implementación de rachas, puntos, insignias y panel de seguimiento del alumno.
* Noviembre (Fase 7) — Integración de IA: Conexión con la API de OpenAI (GPT-4o mini) y calibración del motor adaptativo probabilístico.
* Diciembre (Fase 8) — Validación y cierre: Pruebas con usuarios reales, corrección de errores, ajustes finales y defensa del proyecto.


El avance de las actividades será monitoreado periódicamente mediante herramientas de gestión de proyectos y seguimiento de tareas.


La factibilidad temporal, ya que las actividades previstas pueden desarrollarse dentro de los plazos establecidos para la materia, distribuyendo el trabajo en etapas claramente definidas y permitiendo realizar validaciones parciales durante el proceso de desarrollo.


  



6. CONCLUSIÓN GENERAL DEL ESTUDIO
A lo largo de este análisis quedó claro que SEBAS no surge de una idea abstracta, sino de una problemática concreta que el equipo identificó y validó de primera mano. Durante la etapa de relevamiento se realizaron entrevistas a perfiles muy distintos: Azul, una estudiante secundaria a punto de ingresar a la facultad; Juan, un adulto que retoma sus estudios después de años; Laura, quien estuvo a punto de abandonar la carrera por las dificultades en ciencias básicas; Florencia, que siente que el secundario no la preparó; y Antonio, un docente universitario que ve todos los años cómo los alumnos llegan sin las herramientas necesarias. Todos, desde lugares diferentes, confirmaron lo mismo: la transición entre el secundario y la universidad en materias como Matemática, Física y Química es un punto crítico que muchos no logran superar.
Ese contexto es el que le da sentido a cada decisión técnica, económica y operativa tomada en este estudio. Las tecnologías elegidas son accesibles y dominadas por el equipo, los costos son razonables para el alcance del proyecto, y la solución no exige ningún cambio en la rutina de los estudiantes más allá de usar el celular que ya tienen en la mano.
Según lo relevado, los propios estudiantes ya buscan ayuda por su cuenta: miran videos, usan inteligencia artificial, consultan foros. SEBAS no va a pelear contra ese comportamiento, sino que va a ordenarlo y potenciarlo, ofreciendo una experiencia estructurada, con seguimiento real del progreso y elementos de gamificación que sostengan la motivación en el tiempo. Laura lo dijo claramente durante la entrevista: "Si hubiera tenido algo así, me hubiera ayudado un montón."
No se identificaron impedimentos legales, técnicos ni organizacionales que pongan en riesgo el proyecto. El único punto a cuidar es el cumplimiento de los plazos, dado que el equipo trabaja en paralelo con otras materias de la carrera.
el equipo considera que SEBAS está en condiciones de avanzar. No solo porque los números dan, sino porque hay una necesidad real esperando una respuesta.
Glosario:
Firebase Auth: es un servicio de Google que permite a los usuarios registrarse e iniciar sesión en la aplicación de forma segura, sin que el equipo tenga que construir ese sistema desde cero.
NoSQL1: es un tipo de base de datos que permite guardar información de forma flexible, ideal para aplicaciones donde los datos de cada usuario pueden variar, como el historial de ejercicios o el progreso académico.
API de OpenAI: es la conexión con la inteligencia artificial de ChatGPT, que en SEBAS se usará para generar retroalimentación personalizada según las respuestas del estudiante.
IRT/ELO1. son algoritmos matemáticos que miden el nivel de conocimiento de una persona y ajustan automáticamente la dificultad de los ejercicios según su desempeño, similar a cómo funcionan los rankings en ajedrez o los videojuegos competitivos.
Backend: es la parte del sistema que el usuario no ve, donde se procesan los datos, se ejecutan los cálculos y se conectan todos los servicios de la aplicación.
Dashboard: es un panel visual donde el alumno puede ver de un vistazo su progreso, sus logros, los ejercicios completados y su evolución a lo largo del tiempo — similar al resumen de actividad que muestra una app de fitness como Fitbit o el resumen anual de Spotify.
Arquitectura serverless: es un modelo de desarrollo donde la aplicación no depende de un servidor propio fijo. En cambio, usa la infraestructura de empresas como Google o Amazon que se activa solo cuando se necesita, lo que reduce costos y permite que la app escale sola si de repente la usan miles de usuarios.


































  



Estándar de Referencia: IEEE 830-1998
Ficha del documento
Fecha
	Revisión
	Autor
	Verificado (Dep. Calidad)
	02/06/2026
	1.0
	Pamela Nuñez, Camila Tamburrino
	Leonel Digiglio
	1. INTRODUCCIÓN


1.1 Propósito
El presente documento tiene como propósito establecer de manera clara, completa, formal y verificable los requisitos funcionales y no funcionales de la aplicación móvil SEBAS (Sistema de Ejercitación y Entrenamiento en Ciencias Básicas). Este documento está dirigido al cuerpo docente de la materia Proyecto Final de la Licenciatura en Administración de Sistemas, al equipo de desarrollo y a las instituciones universitarias interesadas en su adopción estratégica.
Sirve como un contrato técnico formal que define el alcance exacto del producto, mitigando los riesgos de malentendidos y sirviendo de base analítica para futuras validaciones y fases de prueba. Los objetivos operativos del negocio que busca viabilizar son:


* Reducir la brecha cognitiva entre la educación secundaria y las exigencias del ciclo básico de carreras de ingeniería y licenciaturas en Argentina.
* Disminuir la deserción universitaria durante el primer año en un 25% aproximado.
* Fomentar la retención y la constancia diaria de los alumnos a través de mecánicas lúdicas y un andamiaje adaptativo guiado por inteligencia artificial.


1.2 Alcance
El software a desarrollar se denomina SEBAS. Consiste en un sistema de aprendizaje adaptativo gamificado, desarrollado exclusivamente de forma nativa para dispositivos móviles con sistema operativo Android.


El alcance del producto comprende:
* Registro e inicio de sesión de usuarios móviles (Firebase Auth).
* Módulos interactivos de ejercitación para cinco asignaturas core: Matemática, Álgebra, Análisis Matemático, Física y Química.
* Un motor probabilístico e híbrido de Inteligencia Artificial Adaptativa de bajo costo que ajusta en tiempo real la dificultad intrínseca de los ítems en base al desempeño individual.
* Mecánicas completas de gamificación: acumulación de puntos de experiencia, mantenimiento de rachas diarias de estudio, desbloqueo de insignias digitales y niveles de progresión visual inspirados en el modelo exitoso de Duolingo.
* Tableros de control de progreso personal y dashboards analíticos para estudiantes y visualización académica de conexión para docentes.
* Lógica de retroalimentación pedagógica inmediata con explicaciones detalladas paso a paso tras cada resolución errónea.
* Algoritmia para la selección aleatoria de reactivos dentro de un Grafo de Conocimiento estructurado, minimizando la repetición de ejercicios por sesión.

El sistema se plantea como una solución independiente, financiada a nivel institucional por la universidad mediante sponsors para garantizar su total gratuidad hacia el alumnado.


1.3 Personal Involucrado
Nombre
	Rol
	Categoría Profesional
	Responsabilidades
	Contacto
	Leonel Digiglio
	Analista / Desarrollador Cloud
	Estudiante 4° Año (Sistemas)
	Diseño de base de datos NoSQL, arquitectura serverless GCP/AWS, optimización de API de IA
	ldigiglio@
udemm.edu.ar
	Camila Tamburrino
	Diseñadora UI/UX / Programadora
	Estudiante 4° Año (Sistemas)
	Maquetación Android, flujos de gamificación, diseño centrado en el usuario
	ctamburrino@
udemm.edu.ar
	Pamela Nuñez
	Analista Funcional / QA
	Estudiante 4° Año (Sistemas)
	Elicitación de requisitos, especificación formal, pruebas de campo con usuarios objetivos
	pnunez@
udemm.edu.ar
	Ing. José Castiñeiras
	Director de Proyecto
	Profesor Universitario
	Supervisión académica, validación de entregables y gobernanza
	jcastineiras@
docente.udemm.edu
	Ing. Pablo Avellaneda
	Co-Director Técnico
	Profesor Universitario
	Tutor en arquitectura de software y algoritmos
	pavellaneda@
docente.udemm.edu
	

1.4 Definiciones, Acrónimos y Abreviaturas
   * ERS: Especificación de Requisitos de Software.
   * RF / RNF: Requerimiento Funcional / Requerimiento No Funcional.
   * IRT (Item Response Theory): Teoría de Respuesta al Ítem. Modelo matemático-estadístico que calcula la probabilidad latente de acierto de un usuario frente a un ítem con dificultad parametrizada.
   * ELO: Algoritmo matemático de puntuación predictiva (derivado del ajedrez) adaptado para medir niveles dinámicos de habilidad relativa.
   * NoSQL: Paradigma de base de datos no relacional optimizada para almacenamiento de documentos JSON flexibles en tiempo real.
   * Serverless / Event-Driven: Arquitectura en la nube donde la ejecución de código es disparada por eventos específicos y no requiere aprovisionamiento de servidores dedicados permanentes.
   * STEM: Acrónimo en inglés para Ciencia, Tecnología, Ingeniería y Matemáticas.
   * CBC: Ciclo Básico Común universitario.


1.5 Referencias
      * Estándar IEEE 830-1998: IEEE Recommended Practice for Software Requirements Specifications.
      * Clarín (2019): "Adicciones al celular en adolescentes argentinos".
      * La Vanguardia (2020) & Infobae (2018): Datos estadísticos de egreso e ingreso en ingenierías y ciencias exactas.
      * Documento Interno: Anteproyecto SEBAS 2026.
Documento Interno: Anexo Mapa de Empatía Consolidado 2026.
      * Documento Interno: Anexo Estrategia de Uso de IA Adaptativa 2026.


1.6 Resumen
Este documento está estructurado minuciosamente para facilitar la auditoría técnica. En la sección 2 se describe la perspectiva global de SEBAS, sus limitaciones de entorno, características demográficas de los usuarios de prueba, asunciones operativas y su evolución futura planificada. La sección 3 aborda de forma cuantitativa y atómica cada uno de los 44 requisitos funcionales y los requisitos de calidad no funcionales del ecosistema mobile cloud.


2. DESCRIPCIÓN GENERAL
2.1 Perspectiva del Producto
SEBAS es un sistema nativo mobile e independiente de los sistemas académicos tradicionales de las universidades. Adopta un diseño desacoplado bajo una arquitectura Cliente/Servidor basada en microservicios y funciones en la nube (Cloud Functions/Lambda).


El almacenamiento persistente reside en bases de datos documentales NoSQL en la nube (Firebase Firestore), comunicándose con el cliente móvil Android mediante peticiones HTTPS cifradas y endpoints RESTful.


2.2 Funcionalidad del Producto (Ciclo de Vida del Estudiante)
El núcleo operativo interactivo se modela siguiendo el flujo del "Viaje del Estudiante" concebido bajo metodologías de diseño de producto ágiles (Working Backwards):


         1. Evaluación Diagnóstica Inicial: El ingresante accede por primera vez y resuelve un set calibrado de 3 ejercicios de nivel intermedio (Dificultad 5). El sistema procesa los aciertos/errores y los tiempos de resolución para computar el Perfil de Habilidad inicial en la base NoSQL.

         2. Bucle de Adaptabilidad Progresiva: El motor evalúa de forma asincrónica cada respuesta entregada. Si el alumno demuestra competencia encadenada, el grafo de conocimiento eleva la complejidad de los ítems secuenciales para evitar el aburrimiento (Estado de Flujo). 


            3. Andamiaje Pedagógico ante Fallos: Si el estudiante incurre en errores reiterados, la IA bloquea el aumento de dificultad y activa dinámicamente un cambio de formato, proveyendo infografías, resúmenes conceptuales o videos cortos antes de volver a evaluar el nodo temático. 


            4. Gamificación Coercitiva Positiva: Al cerrar cada sesión de práctica exitosa, el sistema valida y actualiza las rachas diarias del perfil, computando los puntos de experiencia e impacta los logros visuales en el panel del alumno.


2.3 Características de los Usuarios
El universo de usuarios finales es altamente heterogéneo, identificado con precisión científica mediante cinco entrevistas cualitativas de campo consolidado:


               * Perfil Ingresante Nativo Digital (Ej: "Azul", 18 años): Estudiantes habituados al uso natural de interfaces táctiles e IA genérica. Demandan inmediatez, dinamismo, estímulo visual rápido y entornos lúdicos altamente interactivos.
               * Perfil Adulto que Retoma Estudios (Ej: "Juan", 55 años): Estudiantes alejados del circuito académico por décadas. Presentan resistencia o intimidación severa ante tecnologías complejas, interfaces sobrecargadas o costos ocultos. Requieren legibilidad extrema y flujos lineales simples.
Perfil Revalidador del CBC (Ej: "Laura" 30 años / "Florencia" 23 años): Alumnas que experimentaron la frustración del aplazo recurrente debido a las deficiencias formativas del nivel secundario. Necesitan validación constante de su progreso y refuerzo de su autoconfianza académica.
               * Perfil Docente Supervisor (Ej: "Antonio", 65 años): Académicos refractarios al uso "vacío" o automatizado de la IA que reemplaza el esfuerzo cognitivo real. Exigen que el sistema actúe como un tutor constructivista y no como una herramienta que entrega respuestas resueltas mecánicamente.


2.4 Restricciones
                  * Plataforma: Aplicación móvil ejecutable exclusivamente en dispositivos con sistema operativo Android (API de nivel 21 o superior).
                  * Tecnología del Backend: Lógica serverless basada en Node.js/Python ejecutada en entornos controlados con nulo costo fijo operacional.
                  * Infraestructura: Dependencia mandatoria de conectividad HTTPS; las bases de datos deben operar en nubes con capa gratuita extendida (Firebase Spark Plan / MongoDB Atlas Free Tier).
                  * Idioma: Interfaz de usuario estructurada de forma nativa únicamente en idioma español.
                  * Costo Financiero: El software final debe carecer por completo de anuncios invasivos o muros de pago para evitar la exclusión de perfiles socioeconómicos vulnerables.


2.5 Suposiciones y Dependencias
                     1. Se asume que las instituciones universitarias aliadas facilitarán el acceso a sus programas curriculares oficiales para la correcta calibración pedagógica del Grafo de Conocimiento inicial.
                     2. Se depende críticamente de la estabilidad operacional y los esquemas de precios de la API de OpenAI (específicamente el modelo parametrizado gpt-4o-mini) para la ejecución en tiempo real del prompt lógico del sistema.
                     3. Se presupone que el estudiante cuenta con un dispositivo móvil inteligente estable que posea capacidades básicas para renderizar componentes gráficos responsivos sin lag de procesamiento de interfaz.


2.6 Evolución Previsible del Sistema
                        * Fase de Integración Académica Futura: Conexión programática mediante APIs bilaterales con sistemas de gestión de alumnos líderes de la región (SIU-Guaraní).
                        * Expansión Curricular: Incorporación modular de materias más complejas del ciclo superior, tales como Análisis Matemático II, Álgebra Lineal Computacional, Termodinámica Avanzada y Física Mecánica Computacional.
                        * Módulo de Tutoría por Pares (Comunidad): Integración de foros asincrónicos moderados automáticamente por IA y chats en tiempo real para habilitar dinámicas grupales de estudio.
                        * Desarrollo Multiplataforma: Posibilidad de migración del frontend a tecnologías híbridas (Flutter o React Native) para dar soporte al ecosistema Android y clientes web de escritorio.


2.7 Vistas de la Plataforma SEBAS 
                           * Inicio de sesión:
  
     



















                           * Panel Principal y Herramientas


  
  

















                           * Progreso y Contenidos Detallados
  
  

  


  



3. REQUISITOS ESPECÍFICOS
3.1 Requisitos Funcionales 


Módulo de Autenticación, Registro y Perfilería de Alumnos
                           * RF1: Registro de Usuarios Móviles. El sistema debe permitir a cualquier ingresante crear una cuenta única proporcionando nombre completo, DNI, correo electrónico válido, universidad de destino, carrera y año de egreso del secundario.
                           * RF2: Autenticación Segura (Sign-In). El sistema debe procesar de forma segura el inicio de sesión validando las credenciales contra el servicio de Firebase Auth.
                           * RF3: Recuperación de Accesos. El sistema debe contar con un flujo de reseteo de contraseñas mediante el envío automatizado de links con token criptográfico de expiración temporal (15 minutos) al mail registrado.
                           * RF4: Gestión del Perfil del Estudiante. El alumno debe poder modificar sus datos personales básicos, avatar visual del perfil y configurar alertas horarias de recordatorio de estudio.
                           * RF5: Baja y Eliminación de Cuentas. El sistema debe permitir al usuario borrar de manera lógica o definitiva su legajo digital interno, anonimizando sus estadísticas históricas para protección de datos personales de acuerdo a regulaciones vigentes.




Módulo de Ejercitación e Interactividad Curricular (STEM)
                           * RF6: Clasificación por Materia Troncal. El sistema expondrá de forma explícita cinco secciones independientes en la vista raíz: Matemática, Álgebra, Análisis Matemático, Física y Química.
                           * RF7: Desglose por Nodos Temáticos (Grafo de Conocimiento). Cada materia debe estructurarse jerárquicamente. Por ejemplo, Matemática expondrá de forma secuencial: Ecuaciones Lineales, Ecuaciones Cuadráticas, Funciones Trascendentales, etc.
                           * RF8: Selección Aleatoria y Mitigación de Repetición. Al iniciar una sesión de estudio, los ítems presentados deben seleccionarse aplicando un factor de aleatoriedad sobre el set de reactivos calificados, evitando que un alumno visualice el mismo ejercicio exacto en un período inferior a 30 días corridos.
                           * RF9: Entrada Multimodal de Respuestas. La interfaz del ítem debe soportar resoluciones mediante selección múltiple (opciones fijas), emparejamiento de conceptos, ordenamiento lógico paso a paso y completado de campos numéricos exactos.
                           * RF10: Retroalimentación Desglosada Inmediata. Al momento exacto en que el usuario presione "Enviar Respuesta", el sistema marcará visualmente el acierto o el error, y desplegará un panel flotante detallando el razonamiento matemático-lógico del ejercicio resuelto.
                           * RF11: Bloqueo/Desbloqueo de Prerrequisitos Metadatos. El sistema mantendrá nodos temáticos bloqueados (candado visual) si el alumno no ha superado con un score de maestría el nodo correlativo previo (Ej: Bloquear "Cálculo Diferencial" si no aprobó "Álgebra Lineal básica").
                           * RF12: Biblioteca Integrada de Fórmulas Dinámicas. El sistema incluirá una sección estática de consulta rápida que agrupe las fórmulas esenciales de cálculo integral, matrices, vectores, cinemática y termodinámica, organizada jerárquicamente por ramas científicas.
                           * RF13: Herramienta de Calculadora Científica Interna. La aplicación proveerá un módulo embebido de calculadora para realizar cálculos aritméticos y trigonométricos complejos sin requerir que el usuario abandone el flujo del software.


Módulo del Motor de Inteligencia Artificial Adaptativa e Híbrida
                           * RF14: Inicialización Diagnóstica de Habilidad Latente. El sistema obligará a realizar un test de tres preguntas calibradas de nivel medio ante el ingreso a una nueva rama temática para aproximar matemáticamente la habilidad inicial del usuario.
                           * RF15: Procesamiento del Tiempo de Respuesta. El motor debe capturar con precisión de milisegundos el lapso temporal transcurrido entre la presentación visual del ejercicio y el envío de la solución por parte del alumno para ponderar el nivel de dominio real.
                           * RF16: Ejecución del Algoritmo de Rating ELO Híbrido. El backend recalculará el ranking de habilidad del alumno tras cada respuesta utilizando las fórmulas logísticas estandarizadas del sistema ELO (tratando al alumno y al ítem como competidores matemáticos directos).
                           * RF17: Consumo Estructurado de la API de OpenAI. Ante la entrega de un set de respuestas finalizado, el microservicio del backend enviará un payload JSON a la API de GPT-4o mini con el prompt lógicamente formateado.
                           * RF18: Parseo Obligatorio del Output JSON de IA. El sistema debe forzar al LLM a retornar un esquema JSON rígido que contenga exclusivamente las siguientes llaves estructuradas: nueva_dificultad (número entero del 1 al 10), tema_recomendado (string) y feedback_pedagogico (frase corta motivacional).
                           * RF19: Ajuste Escalado de Dificultad (Reglas del Cerebro). Aplicar la lógica condicional: Si el estudiante resuelve correctamente el reactivo en un tiempo menor a 30 segundos, el motor elevará la dificultad sumando de forma directa 2 niveles en el próximo ítem del grafo.
                           * RF20: Decremento Controlado ante Errores Críticos. Si el alumno falla la respuesta y el cronómetro detecta un tiempo invertido superior a 60 segundos, la IA reducirá en 1 nivel de dificultad y gatillará el andamiaje teórico auxiliar.
                           * RF21: Inyección Automatizada de Refuerzo Conceptual. Al acumular dos respuestas fallidas consecutivas dentro de un mismo nodo temático, el motor suspenderá temporalmente la presentación de ítems y renderizará de forma mandatoria una infografía explicativa o tutorial textual aclaratorio.
                           * RF22: Modelo Inteligente On-Device (TensorFlow Lite Fallback). En situaciones donde el costo de la API o la latencia de la red excedan parámetros aceptables, el backend cambiará la lógica de cálculo mutando hacia un script heurístico local que ejecute ecuaciones logísticas locales fijas ($0 USD de procesamiento).


Módulo de Gamificación, Retención y Motivación de Usuarios
                              * RF23: Cómputo de Puntos de Experiencia (XP). El sistema asignará puntos matemáticos variables tras cada resolución exitosa: Base de 10 XP multiplicada por el coeficiente de dificultad del ítem superado.
                              * RF24: Contador y Persistencia de Rachas Diarias (Streaks). El software validará diariamente si el estudiante resolvió al menos un ejercicio dentro del día calendario (00:00 a 23:59 hora local). Si se cumple, incrementará el contador en +1 día; si falla, el contador volverá automáticamente a cero.
                              * RF25: Notificación e Incentivo del Hábito. El sistema emitirá alertas push inteligentes a las 20:00 horas si el usuario está en riesgo inminente de perder su racha diaria acumulada.
                              * RF26: Sistema Dinámico de Niveles de Progresión. La experiencia acumulada debe traducirse en niveles numéricos visuales de rango infinito. Cada subida de nivel debe disparar un modal de felicitación gráfica centrado en el alumno.
RF27: Desbloqueo Automático de Insignias Digitales (Badges). El sistema otorgará medallas gráficas no fungibles al cumplir hitos operacionales específicos (Ej: "Cazador de Ecuaciones" al resolver 50 ítems de Álgebra sin fallos, "Estudiante de Acero" al sostener una racha invicta de 30 días).
                                 * RF28: Almacenamiento Offline de Reactivos. La aplicación descargará de forma silenciosa en la memoria caché local del teléfono celular un búfer de 20 ejercicios genéricos por asignatura, permitiendo que el ingresante practique en situaciones de movilidad sin acceso a internet.


Módulo de Reportería, Visualización y Seguimiento Docente
                                    * RF29: Panel Gráfico del Estudiante (Dashboard Principal). La pantalla de inicio del sistema exhibirá un panel unificado con la racha vigente en fuego, los puntos de experiencia totales, las medallas obtenidas y una barra de progreso porcentual del avance macro del nivel.
                                    * RF30: Panel de Visualización Académica Docente. El sistema ofrecerá una interfaz diferenciada (accesible por web o rol autorizado) que permita a los profesores universitarios monitorear la frecuencia de conexión de sus cohortes y la actividad agregada dentro del software.
                                    * RF31: Reportes Estadísticos de Desempeño. Generar de forma automatizada cuadros de control con filtros por materia y período de tiempo para observar curvas analíticas de rendimiento por estudiante.
                                    * RF32: Exportación de Historiales Académicos. Permitir la extracción de las analíticas de progreso del estudiante en formatos estándar de hoja de cálculo comprimida (.csv o .xlsx) para permitir su posterior cruzamiento por parte de gabinetes psicopedagógicos institucionales.


Módulo de Ayuda, Soporte e Integración Técnica
                                    * RF33: Manual de Uso de Aprendizaje Integrado. El sistema debe disponibilizar guías tutoriales interactivas animadas durante el primer inicio de sesión para familiarizar a usuarios no tecnológicos con la navegación móvil.
                                    * RF34: Módulo de Reporte de Bugs Técnicos. Incluir una ventana directa de contacto con el equipo de LCP Consultores para reportar errores de interfaz, inconsistencias en respuestas pedagógicas o caídas imprevistas del sistema.




3.2 Requisitos No Funcionales
3.2.1 Seguridad e Integridad de la Información
                                    * Seguridad Criptográfica: Toda comunicación entre el dispositivo móvil Android y la arquitectura Cloud Serverless se procesará mediante canales cifrados utilizando protocolos TLS 1.3 con firmas HTTPS válidas.
                                    * Protección de Datos Sensibles: Las contraseñas locales y tokens de autenticación se almacenarán e indexarán aplicando hashing seguro SHA-256 en los servidores del proveedor de identidad cloud. Los datos del "Perfil de Habilidad" JSON estarán estrictamente restringidos mediante reglas de acceso a bases de datos a nivel de servidor.
                                    * Registro de Actividad Tecnológica (Logs): El sistema auditará de manera automatizada todas las altas de usuarios, alteraciones de ranking ELO y transacciones críticas en la nube escribiendo registros persistentes inmutables protegidos contra manipulación externa.

3.2.2 Usabilidad y Diseño Centrado en el Alumno
                                       * Simplicidad de Interfaz de Rango Etario Amplio: El diseño visual debe ser limpio, minimalista y de lectura simple, utilizando tipografías con escala de tamaño dinámico y botones de un área táctil mínima de $48 \times 48$ dp para no excluir a usuarios de perfiles adultos mayores o no nativos digitales.
                                       * Identidad de Marca Consistente: La paleta cromática del frontend móvil respetará las directrices estéticas clásicas del ecosistema educativo moderno, priorizando indicadores claros en verde para aciertos de respuesta, rojo sutil para errores informativos y tonalidades neutras para marcos conceptuales teóricos.


3.2.3 Rendimiento y Eficiencia Operacional
                                          * Tiempos de Respuesta Latentes: Las operaciones de validación aritmética comunes y la entrega de retroalimentaciones inmediatas locales no excederán bajo condiciones normales de red un tiempo de procesamiento total de 2 segundos.
                                          * Latencia Tolerable en Consultas por IA: El proceso asincrónico que involucra el envío de payloads JSON a la API externa de OpenAI y el posterior parseo lógico de la respuesta no demorará más de 3 segundos acumulados en el 95% de las transacciones estudiadas.
                                          * Soporte Concurrente: El backend cloud serverless escalará de forma elástica automática para asimilar picos estacionales de demanda de más de 10.000 usuarios activos mensuales concurrentes durante los meses de inicio del ciclo preuniversitario sin degradar la velocidad operativa general.


3.2.4 Disponibilidad y Resiliencia Continua
                                             * Disponibilidad Operativa Anual: El sistema cloud garantizará una tasa de disponibilidad continua del 99.9% de las funciones de la plataforma durante las 24 horas del día, los 7 días de la semana, exceptuando ventanas programadas de mantenimiento de infraestructura debidamente notificadas.
                                             * Políticas de Respaldo Automatizado (Backups): Se generarán copias de seguridad incrementales automatizadas de la base de datos documental Firebase Firestore cada 24 horas exactas, asegurando una recuperación completa del sistema ante fallos lógicos graves de software con una ventana de pérdida de datos inferior a un día.
                                             * Tolerancia a Fallos de Conectividad: Ante la pérdida total o intermitencia del canal de red móvil del operador telefónico, el software móvil inhibirá el bloqueo de la pantalla de usuario y conmutará inmediatamente al modo offline de contingencia sin arrojar excepciones críticas o cierres inesperados de la aplicación.


3.2.5 Mantenibilidad y Portabilidad
                                                * Arquitectura Modular Separada: El código fuente del frontend móvil Android se estructurará siguiendo los patrones de arquitectura limpia MVVM (Model-View-ViewModel), logrando un aislamiento total entre la capa de interfaz visual del usuario, las reglas de negocio lúdicas y la base de datos persistente.
                                                * Compatibilidad de Plataformas e Interoperabilidad: El sistema mantendrá retrocompatibilidad absoluta garantizada en una cuota mínima de mercado del 90% de los smartphones Android en circulación activa en la región, funcionando de forma fluida a través de pantallas de configuraciones geométricas diversas.

4. APÉNDICES
Contenidos Curriculares Específicos del Ciclo Básico
Para asegurar que SEBAS actúe como un puente relevante alineado con el contexto de la educación superior argentina, el banco de reactivos inicial estructurado en el Grafo de Conocimiento cubrirá estrictamente los programas analíticos oficiales e hitos temáticos dictados en las asignaturas STEM troncales del ciclo inicial:
  







La dificultad paramétrica inicial (escala de 1 a 10) de los reactivos y sus prerrequisitos estructurales internos se modelan programáticamente en la base de datos documental de acuerdo al siguiente esquema técnico referencial:



JSON


{
  "ejercicios": {
    "MAT-001": {
      "materia": "Matemática",
      "tema": "Ecuaciones Lineales de Primer Grado",
      "dificultad_inicial": 2,
      "prerrequisito": null
    },
    "MAT-005": {
      "materia": "Matemática",
      "tema": "Resolución de Ecuaciones Cuadráticas por Resolvente",
      "dificultad_inicial": 5,
      "prerrequisito": "MAT-001"
    },
    "FIS-010": {
      "materia": "Física",
      "tema": "Movimiento Rectilíneo Uniformemente Variado (MRUV)",
      "dificultad_inicial": 4,
      "prerrequisito": "MAT-001"
    },
    "QMA-003": {
      "materia": "Química",
      "tema": "Balanceo de Ecuaciones Químicas por Estequiometría",
      "dificultad_inicial": 6,
      "prerrequisito": "MAT-005"
    }
  }
}


Este esquema de requisitos específicos garantiza que el motor de adaptabilidad probabilística e híbrida cuente con metadatos estables y consistentes para calcular con rigor matemático las trayectorias de aprendizaje personalizadas de los estudiantes.


























REQUERIMIENTOS FUNCIONALES — PROYECTO SEBAS
	

Identificación del requerimiento:
	RF01
	Nombre del Requerimiento:
	Registro y Onboarding de Usuario
	Características:
	El estudiante debe poder crear una cuenta y seleccionar el contenido al cual quiera ingresar.
	Descripción del requerimiento:
	El sistema debe permitir el autoonboarding mediante Firebase Auth ingresando nombre, correo y contraseña. Al registrarse, el usuario podrá seleccionar entre las materias disponibles, aquellas que quiera inscribirse.
	Requerimiento NO funcional relacionado:
	RNF01. Seguridad y Cifrado Integral: Las contraseñas deben cifrarse antes de almacenarse.
RNF02. Usabilidad: El formulario debe ser simple, con campos claros y mensajes de error comprensibles.
	Prioridad del requerimiento:
	Alta
	



Identificación del requerimiento:
	RF02
	Nombre del Requerimiento:
	Inicio de Sesión
	Características:
	El usuario registrado debe poder acceder a su cuenta con sus credenciales.
	Descripción del requerimiento:
	El sistema debe permitir al usuario iniciar sesión con su correo y contraseña. Si las credenciales son incorrectas, debe mostrar un mensaje de error genérico sin especificar cuál dato es incorrecto. El proceso debe completarse en menos de 2 segundos.
	Requerimiento NO funcional relacionado:
	RNF01. Seguridad y Cifrado Integral: Protección contra accesos no autorizados.
RNF03. Rendimiento: El inicio de sesión no debe superar los 2 segundos.
	Prioridad del requerimiento:
	Alta
	



Identificación del requerimiento:
	RF03
	Nombre del Requerimiento:
	Cierre de Sesión
	Características:
	El usuario debe poder finalizar su sesión de forma segura desde cualquier pantalla.
	Descripción del requerimiento:
	El sistema debe proveer una opción visible para cerrar sesión, eliminando todos los tokens de autenticación y datos de sesión del dispositivo. Tras el cierre, el usuario debe ser redirigido a la pantalla de inicio.
	Requerimiento NO funcional relacionado:
	RNF01. Seguridad y Cifrado Integral: La sesión debe invalidarse completamente al cerrar.
RNF02. Usabilidad: La opción de cerrar sesión debe estar accesible en el menú principal.
	Prioridad del requerimiento:
	Alta
	



Identificación del requerimiento:
	RF04
	Nombre del Requerimiento:
	Recuperación de Contraseña
	Características:
	El usuario debe poder recuperar el acceso a su cuenta en caso de olvidar su contraseña.
	Descripción del requerimiento:
	El sistema debe permitir al usuario solicitar un correo de recuperación de contraseña ingresando su email registrado. Firebase Auth gestionará el envío del enlace de restablecimiento. El enlace debe expirar en 24 horas.
	Requerimiento NO funcional relacionado:
	RNF01. Seguridad y Cifrado Integral: El enlace de recuperación debe ser de uso único y expirar en tiempo definido.
RNF02. Usabilidad: Las instrucciones del correo deben ser claras y en español.
	Prioridad del requerimiento:
	Media
	



Identificación del requerimiento:
	RF05
	Nombre del Requerimiento:
	Selección de Materia
	Características:
	El estudiante debe poder elegir la materia que desea practicar e inscribirse de manera autogestionada: Matemática, Física o Química.
	Descripción del requerimiento:
	La pantalla principal debe mostrar las materias disponibles de forma visual y diferenciada por color. Al seleccionar una materia, el sistema debe permitir inscribirse, mostrar los temas disponibles dentro de ella y el nivel de progreso del usuario en cada uno.
	Requerimiento NO funcional relacionado:
	RNF02. Usabilidad: La selección debe realizarse en un máximo de 2 toques desde la pantalla principal.
RNF04. Compatibilidad: Debe funcionar correctamente en Android 8 o superior.
	Prioridad del requerimiento:
	Alta
	



Identificación del requerimiento:
	RF06
	Nombre del Requerimiento:
	Resolución de Ejercicios
	Características:
	El estudiante debe poder responder ejercicios de opción múltiple dentro de la materia y tema seleccionados.
	Descripción del requerimiento:
	El sistema debe presentar ejercicios con enunciado, opciones de respuesta (mínimo 3) y un temporizador opcional. Al seleccionar una respuesta, el sistema debe registrar si fue correcta o incorrecta, el tiempo de respuesta y actualizar el perfil de habilidad del usuario en tiempo real en Firebase Firestore.
	Requerimiento NO funcional relacionado:
	RNF03. Rendimiento: La carga de cada ejercicio no debe superar 1.5 segundos.
RNF05. Confiabilidad: El resultado de cada ejercicio debe guardarse aunque se pierda la conexión momentáneamente.
	Prioridad del requerimiento:
	Alta
	





Identificación del requerimiento:
	RF07
	Nombre del Requerimiento:
	Retroalimentación Inmediata
	Características:
	El sistema debe informar al estudiante si su respuesta fue correcta o incorrecta y explicar el razonamiento correcto.
	Descripción del requerimiento:
	Tras cada respuesta, el sistema debe mostrar si fue correcta o incorrecta, una explicación paso a paso del razonamiento correcto (generada o seleccionada desde la base de datos) y, en caso de error consecutivo, una infografía o resumen conceptual del tema. La retroalimentación debe guiar el razonamiento sin entregar respuestas directas a ejercicios futuros.
	Requerimiento NO funcional relacionado:
	RNF02. Usabilidad: La explicación debe estar en lenguaje accesible para un estudiante ingresante.
RNF03. Rendimiento: La retroalimentación debe mostrarse en menos de 1 segundo tras la respuesta.
	Prioridad del requerimiento:
	Alta
	

Identificación del requerimiento:
	RF08
	Nombre del Requerimiento:
	Motor Adaptativo de Dificultad
	Características:
	El sistema debe ajustar automáticamente la dificultad de los ejercicios según el desempeño del estudiante.
	Descripción del requerimiento:
	El motor adaptativo debe analizar el historial de respuestas del usuario (aciertos, errores, tiempo de respuesta) utilizando el algoritmo ELO para calcular el nivel de habilidad actual. En base a ese nivel, debe seleccionar el próximo ejercicio con dificultad apropiada desde el banco de ejercicios. Si el alumno acierta consecutivamente, debe aumentar la dificultad; si falla, debe bajarla y activar el andamiaje pedagógico.
	Requerimiento NO funcional relacionado:
	RNF03. Rendimiento: La selección del próximo ejercicio debe realizarse en menos de 2 segundos.
RNF06. Escalabilidad: El motor debe funcionar correctamente con miles de usuarios simultáneos.
	Prioridad del requerimiento:
	Alta
	

























Identificación del requerimiento:
	RF09
	Nombre del Requerimiento:
	Integración con IA Generativa
	Características:
	El sistema debe poder consultar la API de OpenAI para generar retroalimentación personalizada cuando los recursos locales no sean suficientes.
	Descripción del requerimiento:
	Cuando el motor adaptativo detecte que un alumno comete errores consecutivos en un concepto específico, el sistema puede consultar la API de OpenAI (GPT-4o mini) con un prompt de sistema predefinido para obtener una explicación personalizada. La respuesta debe llegar en formato JSON y mostrarse en la pantalla de retroalimentación. Esta funcionalidad debe tener un límite de consumo mensual para controlar costos.
	Requerimiento NO funcional relacionado:
	RNF01. Seguridady Cifrado Integral: Las consultas a la API deben realizarse desde el backend, nunca exponiendo la API key en el cliente.
RNF03. Rendimiento: La respuesta de la API no debe superar los 5 segundos.
	Prioridad del requerimiento:
	Media
	



Identificación del requerimiento:
	RF10
	Nombre del Requerimiento:
	Sistema de Gamificación — Puntos y Rachas
	Características:
	El estudiante debe acumular puntos (XP) y mantener rachas diarias de estudio que reflejen su constancia.
	Descripción del requerimiento:
	El sistema debe otorgar puntos de experiencia (XP) al completar ejercicios correctamente. Cada día consecutivo de uso debe incrementar la racha del usuario. Si el usuario no accede en un día, la racha se reinicia a cero. Los puntos y la racha deben mostrarse en la pantalla principal y actualizarse en tiempo real.
	Requerimiento NO funcional relacionado:
	RNF05. Confiabilidad: Los puntos y rachas no deben perderse ante fallos de conexión.
RNF02. Usabilidad: El estado de racha debe ser visible de forma prominente al abrir la aplicación.
	Prioridad del requerimiento:
	Alta
	





















Identificación del requerimiento:
	RF11
	Nombre del Requerimiento:
	Sistema de Gamificación — Insignias y Logros
	Características:
	El estudiante debe poder desbloquear insignias por alcanzar hitos de estudio.
	Descripción del requerimiento:
	El sistema debe otorgar insignias automáticamente cuando el usuario alcance hitos definidos (ej: completar 10 ejercicios, mantener una racha de 7 días, alcanzar nivel intermedio en una materia). Las insignias desbloqueadas deben mostrarse en el perfil del usuario con una descripción del logro alcanzado.
	Requerimiento NO funcional relacionado:
	RNF02. Usabilidad: El desbloqueo de una insignia debe notificarse con una animación visible y motivadora.
RNF05. Confiabilidad: Las insignias otorgadas no deben perderse ni duplicarse.
	Prioridad del requerimiento:
	Media
	



Identificación del requerimiento:
	RF12
	Nombre del Requerimiento:
	Dashboard de Progreso del Estudiante
	Características:
	El estudiante debe poder visualizar su avance general y por materia en un panel de control personal.
	Descripción del requerimiento:
	El dashboard debe mostrar: porcentaje de progreso por materia, nivel de habilidad actual (calculado por el algoritmo ELO), cantidad de ejercicios resueltos, racha actual, puntos acumulados e insignias obtenidas. Los datos deben actualizarse automáticamente tras cada sesión de ejercicios.
	Requerimiento NO funcional relacionado:
	RNF03. Rendimiento: El dashboard debe cargar en menos de 2 segundos.
RNF02. Usabilidad: La información debe presentarse de forma visual, con gráficos simples y colores diferenciados por materia.
	Prioridad del requerimiento:
	Alta
	



Identificación del requerimiento:
	RF13
	Nombre del Requerimiento:
	Perfil de Habilidad del Usuario
	Características:
	El sistema debe mantener un perfil actualizado del nivel de conocimiento del estudiante por tema y materia.
	Descripción del requerimiento:
	Para cada usuario, el sistema debe almacenar en Firebase Firestore un vector de habilidad por tema (ej: Álgebra, Derivadas, Equilibrio Químico) que se actualiza tras cada ejercicio resuelto. Este perfil es utilizado por el motor adaptativo para seleccionar ejercicios adecuados al nivel actual del estudiante.
	Requerimiento NO funcional relacionado:
	RNF05. Confiabilidad: El perfil debe actualizarse de forma atómica para evitar inconsistencias.
RNF06. Escalabilidad: La estructura NoSQL debe soportar el crecimiento del perfil sin degradar el rendimiento.
	Prioridad del requerimiento:
	Alta
	

Identificación del requerimiento:
	RF14
	Nombre del Requerimiento:
	Banco de Ejercicios por Materia y Nivel
	Características:
	El sistema debe contar con un repositorio de ejercicios organizados por materia, tema y nivel de dificultad.
	Descripción del requerimiento:
	La base de datos debe contener ejercicios de Matemática (Álgebra, Análisis, Geometría), Física (Mecánica, Termodinámica) y Química (Orgánica, Inorgánica), cada uno con metadatos de dificultad, tema, prerrequisitos y respuestas correctas. El banco debe poder cargarse y actualizarse desde el backend sin necesidad de publicar una nueva versión de la aplicación.
	Requerimiento NO funcional relacionado:
	RNF06. Escalabilidad: El banco debe soportar el crecimiento incremental de ejercicios sin impactar el rendimiento.
RNF05. Confiabilidad: Los ejercicios deben mostrarse siempre con su respuesta correcta almacenada.
	Prioridad del requerimiento:
	Alta
	

Identificación del requerimiento:
	RF15
	Nombre del Requerimiento:
	Notificaciones de Recordatorio de Estudio
	Características:
	El sistema debe enviar notificaciones push para recordar al estudiante que complete su sesión diaria.
	Descripción del requerimiento:
	El sistema debe enviar una notificación push al usuario si no ha abierto la aplicación en el día. El mensaje debe ser motivador y personalizado (ej: '¡Tu racha de 5 días está en riesgo, Martín!'). El usuario debe poder configurar el horario preferido de recordatorio y desactivar las notificaciones si lo desea.
	Requerimiento NO funcional relacionado:
	RNF02. Usabilidad: Las notificaciones deben ser breves, claras y no intrusivas.
RNF04. Compatibilidad: Deben funcionar correctamente en Android 8 o superior.
	Prioridad del requerimiento:
	Media
	



Identificación del requerimiento:
	RF16
	Nombre del Requerimiento:
	Grafo de Conocimiento y Prerrequisitos
	Características:
	El sistema debe respetar el orden pedagógico de los temas, presentando contenidos según los prerrequisitos del estudiante.
	Descripción del requerimiento:
	El sistema debe implementar un grafo de conocimiento que defina las dependencias entre temas (ej: para acceder a Derivadas el usuario debe haber alcanzado nivel básico en Álgebra). Si un estudiante intenta resolver ejercicios de un tema avanzado sin dominar los prerrequisitos, el sistema debe sugerirle completar los temas base primero.
	Requerimiento NO funcional relacionado:
	RNF02. Usabilidad: El mapa de temas debe visualizarse de forma clara en el perfil del estudiante.
RNF05. Confiabilidad: Las reglas del grafo deben aplicarse de forma consistente para todos los usuarios.
	Prioridad del requerimiento:
	Media
	

REQUERIMIENTOS NO FUNCIONALES — PROYECTO SEBAS
	

Identificación del requerimiento:
	RNF01
	Nombre del Requerimiento:
	Seguridad y Cifrado Integral
	Características:
	El sistema debe proteger la información personal y académica de los usuarios mediante encriptación.
	Descripción del requerimiento:
	El sistema debe incorporar explícitamente el cifrado de datos tanto en reposo como en tránsito. Además de las contraseñas, se implementarán mecanismos de encriptación para los perfiles de habilidad y datos sensibles, asegurando que las claves de API nunca estén expuestas en el cliente y cumpliendo con la Ley N.º 25.326


	Prioridad del requerimiento:
	Alta
	

Identificación del requerimiento:
	RNF02
	Nombre del Requerimiento:
	Usabilidad
	Características:
	La aplicación debe ser intuitiva y accesible para todos los perfiles de usuario, incluyendo adultos con baja experiencia digital.
	Descripción del requerimiento:
	La interfaz debe seguir principios de diseño minimalista con navegación de no más de 3 toques para acceder a cualquier funcionalidad principal. Los textos deben estar en español rioplatense, en lenguaje claro y sin tecnicismos. Debe incluir íconos descriptivos junto a cada acción. La tipografía debe tener un tamaño mínimo de 14sp para garantizar legibilidad. Se validará con el perfil de usuario adulto (Juan) durante la Fase 3.
	Prioridad del requerimiento:
	Alta
	

Identificación del requerimiento:
	RNF03
	Nombre del Requerimiento:
	Rendimiento
	Características:
	La aplicación debe responder de forma rápida y fluida en dispositivos Android de gama media.
	Descripción del requerimiento:
	El tiempo de carga inicial de la aplicación no debe superar los 3 segundos en una conexión 4G estándar. La carga de cada ejercicio debe completarse en menos de 1.5 segundos. El inicio de sesión no debe superar los 2 segundos. La consulta a la API de OpenAI (cuando se utilice) no debe superar los 5 segundos. El dashboard de progreso debe renderizarse en menos de 2 segundos.
	Prioridad del requerimiento:
	Alta
	







Identificación del requerimiento:
	RNF04
	Nombre del Requerimiento:
	Compatibilidad
	Características:
	La aplicación debe funcionar correctamente en la mayoría de los dispositivos Android utilizados por los estudiantes ingresantes.
	Descripción del requerimiento:
	El sistema debe ser compatible con Android 8.0 (API nivel 26) o superior, que representa la amplia mayoría de los dispositivos en uso en Argentina. Debe funcionar correctamente en pantallas de entre 5 y 7 pulgadas. No debe requerir más de 100MB de espacio de almacenamiento en el dispositivo para su instalación base.
	Prioridad del requerimiento:
	Alta
	





Identificación del requerimiento:
	RNF05
	Nombre del Requerimiento:
	Confiabilidad
	Características:
	El sistema debe disponer de mecanismos que protejan los datos del usuario de acuerdo a las mejores prácticas.
	Descripción del requerimiento:
	El sistema debe proteger mediante el guardado atómico de datos en Firebase Firestore. Para mitigar fallos, el sistema implementará un mecanismo de encolado de actualizaciones que se sincronizará automáticamente al recuperar la conectividad tras una pérdida momentánea. Se establece un objetivo de disponibilidad del 99% durante el período académico 2026
	Prioridad del requerimiento:
	Alta
	





Identificación del requerimiento:
	RNF06
	Nombre del Requerimiento:
	Escalabilidad en Prueba de Concepto (PoC).
	Características:
	Carga de trabajo acotada en fase de prueba a un grupo controlado de usuarios para asegurar la viabilidad económica.
	Descripción del requerimiento:
	Para los fines de esta Prueba de Concepto (PoC), el sistema se configurará y probará para soportar una carga concurrente de hasta 100 usuarios. En caso de una futura implementación en producción, se evaluará la configuración de recursos necesaria para escalar a un volumen mayor basado en las métricas obtenidas en esta fase.
	Prioridad del requerimiento:
	Media
	











Identificación del requerimiento:
	RNF07
	Nombre del Requerimiento:
	Mantenibilidad
	Características:
	El código del sistema debe estar organizado de forma que permita modificaciones y ampliaciones futuras con bajo esfuerzo.
	Descripción del requerimiento:
	El código debe seguir principios de arquitectura limpia con separación clara entre capas (presentación, lógica de negocio, datos). Las Cloud Functions del backend deben estar documentadas internamente. El banco de ejercicios debe poder actualizarse desde el backend sin publicar una nueva versión de la aplicación. Se utilizará GitHub con control de versiones para todo el equipo de desarrollo.
	Prioridad del requerimiento:
	Media
	





Identificación del requerimiento:
	RNF08
	Nombre del Requerimiento:
	Privacidad y Cumplimiento Legal
	Características:
	El sistema debe operar en cumplimiento estricto de la Ley N.º 25.326 de Protección de Datos Personales de Argentina.
	Descripción del requerimiento:
	Al registrarse, el usuario debe aceptar explícitamente los términos y condiciones y la política de privacidad del sistema. Los datos de rendimiento utilizados por el motor adaptativo deben estar disociados del nombre del usuario en el backend. El sistema no debe compartir datos individuales de estudiantes con terceros. El equipo debe estar en condiciones de demostrar el cumplimiento normativo ante una auditoría.
	Prioridad del requerimiento:
	Alta
	





Identificación del requerimiento:
	RNF09
	Nombre del Requerimiento:
	Accesibilidad
	Características:
	Cumplimiento del nivel básico de las pautas internacionales de accesibilidad.
	Descripción del requerimiento:
	La aplicación se diseñará siguiendo las pautas WCAG (Wag), asegurando por lo menos un nivel de cumplimiento básico (Nivel A). Esto incluye elementos interactivos de mínimo 48x48dp y mensajes de error claros para usuarios con diferentes niveles de habilidad digital, incluyendo adultos que retoman sus estudios.
	Prioridad del requerimiento:
	Media
	











Identificación del requerimiento:
	RNF10
	Nombre del Requerimiento:
	Disponibilidad Offline Parcial
	Características:
	La aplicación debe poder funcionar de forma básica sin conexión a internet, permitiendo resolver ejercicios ya cargados.
	Descripción del requerimiento:
	El sistema debe cachear localmente los últimos ejercicios descargados para permitir su resolución sin conexión. El progreso obtenido offline debe sincronizarse automáticamente al recuperar la conectividad. Las funcionalidades que requieren conexión (consulta a API de OpenAI, carga de nuevos ejercicios) deben indicar claramente al usuario cuando no están disponibles por falta de red.
	Prioridad del requerimiento:
	Media