Proyecto Sistemas SEBAS - Tu asistente Universitario                                                                                                                                                                          




  
  

Índice
Anteproyecto
1. Introducción        3
1.1 Objetivo del documento        3
1.2 Descripción del equipo. Habilidades actuales.        3
1.3 Habilidades a adquirir.        4
2. Descripción del Proyecto        4
Logo:        4
2.1 Nombre del proyecto        4
2.2 Problema para resolver        5
2.3 Situación actual de la problemática        5
2.4 Solución propuesta        5
2.5 Alcance        6
Funcionalidades confirmadas:        6
Funcionalidades a evaluar durante el desarrollo:        6
2.6 Fuera de alcance        6
2.7 Objetivo general        7
2.8 Objetivos particulares        7
2.9 Diferencial con soluciones existentes        7
2.10 Beneficiarios        7
2.10 Beneficiarios / Clientes        8
2.11 Línea de tiempo. Estimación inicial de entregables.        8
2.12 Referencias        10
2.13 Glosario        11
Mapa de empatía
1. Introducción        12
2. Perfiles Entrevistados        13
3. Mapa de Empatía        15
4. Conclusiones del Mapa de Empatía        17
5. Glosario        19
Working Backwards......................................................................................................................................20
Uso de Inteligencia Artificial
1. Introducción        27
2. El Enfoque: Item Response Theory (IRT)        27
3. Arquitectura de Bajo Costo        33
4. Estrategia de Implementación:        28
5. El "Motor de IA" (Opciones técnicas)        28
6. El Prompt de Sistema (Si se usa la API de OpenAI)        29
7. Lógica de Negocio: El "Dashboard"        29
8. El Flujo de Adaptabilidad        29
9. Conclusión        30
10. Glosario:        
31
  





  



1. Introducción
1.1 Objetivo del documento
El presente documento tiene como propósito describir el anteproyecto del sistema SEBAS (Sistema de Ejercitación y Entrenamiento en Ciencias Básicas), estableciendo las bases conceptuales, el alcance, los objetivos y la planificación inicial del proyecto.
Este anteproyecto surge como resultado de un proceso de investigación y relevamiento que incluyó entrevistas a estudiantes en distintas etapas de su trayectoria universitaria, así como la consulta a docentes con amplia experiencia en el dictado de materias del ciclo básico. Esa base empírica es lo que diferencia esta propuesta de una idea teórica: SEBAS nace de escuchar de primera mano los problemas reales que enfrentan quienes ingresan a la universidad.
Este documento servirá como guía de referencia para el equipo de desarrollo durante todas las etapas del ciclo de vida del sistema, desde el relevamiento y la especificación de requisitos hasta el diseño, la codificación, las pruebas y la presentación final del producto.
Se espera que este anteproyecto sea un documento que pueda ser actualizado y refinado a medida que el proyecto avance y que nuevas decisiones de diseño o cambios de contexto lo requieran. 


1.2 Descripción del equipo. Habilidades actuales.
El equipo de desarrollo está conformado por tres estudiantes que se encuentran cursando el último año de la Licenciatura en Administración de Sistemas:




* Leonel Digiglio
* Camila Tamburrino
* Pamela Nuñez
Los conocimientos con los que cuenta el equipo fueron adquiridos a lo largo de la carrera universitaria, complementados con cursos adicionales que cada integrante realizó de forma independiente para profundizar en áreas específicas relacionadas con el proyecto.


1.3 Habilidades a adquirir.
A través del desarrollo del Proyecto SEBAS, el equipo se propone explorar y fortalecer las siguientes competencias técnicas, en la medida en que el avance del proyecto lo permita:
* Ingeniería de Prompts y Gestión de Modelos de Lenguaje: Se buscará desarrollar la habilidad de diseñar prompts que permitan a la inteligencia artificial actuar como un evaluador educativo, guiando al estudiante sin darle las respuestas directamente.
* Arquitecturas Cloud y servicios en la nube: Se explorará la implementación de soluciones en la nube, como Google Cloud Functions o AWS Lambda, con el objetivo de que el sistema sea escalable y de bajo costo operativo.
* Modelos de nivelación adaptativa: Se estudiará la aplicación de la Teoría de Respuesta al Ítem (IRT) y el algoritmo ELO como base para ajustar la dificultad de los ejercicios según el desempeño del usuario.
* Diseño de experiencia de usuario y gamificación: Se trabajará en el diseño de interfaces móviles accesibles para distintos perfiles de usuario, incorporando elementos de gamificación como puntos, rachas e insignias para sostener la motivación.
* Bases de datos NoSQL: Se buscará adquirir experiencia en el manejo de Firebase Firestore o MongoDB Atlas para el almacenamiento del progreso y el perfil de habilidad de cada estudiante.




2. Descripción del Proyecto                                                               
  Logo:  


        
2.1 Nombre del proyecto
SEBAS: Sistema de Ejercitación y Entrenamiento en Ciencias Básicas.


2.2 Problema para resolver
La deserción universitaria en el primer año de las carreras de Licenciatura e Ingeniería representa uno de los problemas más críticos del sistema educativo superior en Argentina. Una parte significativa de los ingresantes abandona sus estudios durante el ciclo básico, principalmente debido a la falta de 


preparación en ciencias básicas como Matemática, Álgebra, Análisis Matemático, Física y Química. Esta brecha no es un problema de capacidad de los estudiantes, sino de preparación previa y acompañamiento en la transición entre el nivel secundario y el universitario.


2.3 Situación actual de la problemática
Actualmente, los estudiantes que ingresan al ciclo básico universitario no cuentan con herramientas accesibles, gratuitas y personalizadas que los ayuden a prepararse o a nivelar sus conocimientos en 


ciencias básicas. Las alternativas disponibles presentan limitaciones concretas que impiden resolver el problema de fondo.
Si bien existen herramientas que abordan parcialmente la necesidad, ninguna la resuelve de forma integral para el perfil específico de estudiante argentino que inicia el CBC:
* Khan Academy es la plataforma educativa gratuita más completa del mundo. Ofrece lecciones, videos y ejercicios de Álgebra, Cálculo, Física, Química y Estadística. Explica bien, pero no adapta el recorrido al nivel real del usuario ni está orientada al programa del CBC argentino.
* GeoGebra es una herramienta muy útil para graficar funciones, explorar geometría y visualizar conceptos abstractos de Matemática. Complementa el estudio, pero no enseña ni guía al estudiante en el proceso de aprendizaje.
* Solvely permite fotografiar un ejercicio y obtener la resolución paso a paso mediante inteligencia artificial. Es práctica, pero genera el riesgo señalado por el docente Antonio en las entrevistas: el estudiante obtiene la respuesta sin comprender el razonamiento detrás.
* Fórmula funciona como biblioteca de fórmulas de Matemática, Física y Química organizadas por área. Es útil como material de consulta, pero no enseña ni ejercita.


Cada una de estas herramientas aporta algo valioso, pero ninguna por sí sola construye una base completa. Algunas explican, otras muestran, otras resuelven y otras sirven de consulta, pero el estudiante que empieza el CBC o retoma sus estudios después de años necesita las cuatro cosas integradas, adaptadas a su nivel y en un solo lugar.
A esto se suma que el nivel secundario no brinda la preparación suficiente para enfrentar la exigencia universitaria, tal como lo expresaron de forma espontánea cuatro de los cinco entrevistados en el proceso de investigación cualitativa realizado por el equipo. La brecha no es de capacidad, sino de acompañamiento.
No existe hoy una plataforma móvil, gratuita, en español y con inteligencia artificial adaptativa orientada específicamente a este perfil de usuario. Esa ausencia es la oportunidad concreta que SEBAS busca cubrir.


2.4 Solución propuesta
SEBAS es una aplicación móvil de aprendizaje adaptativo orientada a estudiantes ingresantes al ciclo básico universitario. Su propósito es permitir que los alumnos se ejerciten en las materias de ciencias básicas antes y durante el cursado, reduciendo la brecha entre el nivel secundario y la exigencia universitaria.
La propuesta se basa en tres pilares fundamentales. El primero es la adaptabilidad: el sistema busca personalizar la experiencia de cada usuario según su ritmo y desempeño, presentando ejercicios acordes a su nivel real en cada momento. El segundo es la accesibilidad: la aplicación estará disponible de forma gratuita para dispositivos Android, sin requerir equipamiento adicional ni conexión permanente. 


El tercero es la motivación: se integrarán mecánicas de gamificación inspiradas en el modelo de Duolingo, como puntos, rachas de estudio e insignias, para sostener el compromiso del estudiante a lo largo del tiempo.
SEBAS no busca reemplazar al docente ni al estudio formal, sino funcionar como un complemento de apoyo que el alumno pueda usar en cualquier momento y desde cualquier lugar.


2.5 Alcance
El sistema SEBAS contempla las siguientes funcionalidades dentro de su alcance:


Funcionalidades confirmadas:
* Registro y autenticación de usuarios desde dispositivos móviles Android.
* Módulos de ejercitación en Matemática, Álgebra, Análisis Matemático, Física y Química.
* Ejercicios con criterio de aleatoriedad para minimizar la repetición de consignas por usuario y por sesión.
* Retroalimentación inmediata ante cada respuesta, tanto correcta como incorrecta, con explicación del razonamiento.
* Sistema de gamificación: puntos, rachas de estudio, insignias y niveles de progreso.
* Panel de progreso personal donde el usuario puede visualizar su avance por materia.
* Interfaz intuitiva y accesible, diseñada para distintos perfiles de usuario, incluyendo adultos con menor experiencia digital.
Funcionalidades a evaluar durante el desarrollo:
* Implementación de un motor de inteligencia artificial adaptativa que ajuste la dificultad de los ejercicios según el desempeño del usuario, sujeto a viabilidad técnica y económica.
* Panel de visualización para docentes que permita monitorear la actividad de los alumnos, su frecuencia de conexión y determinados datos estadísticos para el seguimiento académico.
* Módulo de comunicación entre usuarios, como foros o espacios de consulta comunitaria, cuya incorporación se evaluará en función del tiempo disponible y la complejidad técnica.


2.6 Fuera de alcance
Los siguientes elementos quedan expresamente excluidos del presente proyecto:
* Integración con sistemas académicos de universidades o instituciones educativas.
* Contenido de materias fuera de las ciencias básicas definidas en el alcance.
* Versión web o de escritorio de la plataforma.
* Módulo de administración de contenido para docentes o instituciones.
* Soporte para idiomas distintos al español.
2.7 Objetivo general
Desarrollar una aplicación móvil para Android de aprendizaje adaptativo que permita a los estudiantes ingresantes a carreras universitarias de Licenciatura e Ingeniería prepararse en las materias de ciencias básicas, reduciendo la brecha de conocimiento entre el nivel secundario y el universitario, y contribuyendo a disminuir la tasa de abandono en el primer año de cursada.


2.8 Objetivos particulares
* Diseñar e implementar una interfaz móvil intuitiva y accesible para distintos perfiles de usuario, incluyendo jóvenes ingresantes y adultos que retoman sus estudios.
* Desarrollar módulos de ejercitación interactiva para las materias de Matemática, Álgebra, Análisis Matemático, Física y Química, con distintos niveles de dificultad.
* Evaluar la viabilidad de implementar un motor de inteligencia artificial adaptativa que personalice el recorrido de aprendizaje según el rendimiento individual de cada usuario.
* Integrar un sistema de gamificación con puntos, rachas, insignias y niveles que incentive el uso continuo y sostenido de la plataforma.
* Proveer al usuario un panel de progreso personal que le permita visualizar su evolución a lo largo del tiempo y por materia.
* Validar el sistema con usuarios reales pertenecientes al público objetivo antes de la entrega final del proyecto.


2.9 Diferencial con soluciones existentes
SEBAS se diferencia de las herramientas disponibles en el mercado por los siguientes factores:
Acceso gratuito para el alumno: la plataforma no tendrá costo para el estudiante. El financiamiento se explorará a través de convenios institucionales con universidades u otros mecanismos que no afecten la accesibilidad del sistema.
Orientación específica al CBC argentino: el contenido está diseñado exclusivamente para las materias del ciclo básico universitario en Argentina, lo que lo hace significativamente más relevante que plataformas genéricas de alcance global.
Adaptabilidad al usuario: a diferencia de un banco de ejercicios estático, el sistema buscará ajustar el contenido y la dificultad en función del desempeño real de cada alumno, ofreciendo una experiencia personalizada.
Gamificación motivacional: inspirado en el modelo de Duolingo, incorpora mecánicas de juego que buscan sostener la motivación del estudiante y reducir el abandono por frustración.
Foco en el momento más crítico: SEBAS está pensado específicamente para el período previo al ingreso y los primeros meses de cursada, el momento de mayor riesgo de abandono, un nicho que ninguna plataforma actual atiende de forma integral.


2.10 Beneficiarios
Beneficiario principal: estudiantes que están por iniciar o están cursando el ciclo básico universitario de carreras de Licenciatura e Ingeniería en Argentina. Son el centro de la propuesta: jóvenes que vienen del secundario con una base insuficiente para enfrentar la exigencia universitaria, y que necesitan un acompañamiento accesible, gratuito y disponible en cualquier momento.


Beneficiario secundario: adultos que retoman sus estudios universitarios después de un período de inactividad académica. Este perfil, representado en las entrevistas por Juan, requiere una herramienta especialmente simple, sin tecnicismos y sin barreras tecnológicas, que le permita nivelarse a su propio ritmo sin sentirse excluido por su menor familiaridad con la tecnología actual.




Beneficiario indirecto: instituciones universitarias y docentes, que podrán recibir ingresantes con una base de conocimiento más sólida y con hábitos de estudio más consolidados. Esto se traduce en una reducción de la carga de nivelación durante el cursado, menor tasa de abandono en el primer año y un mejor aprovechamiento del tiempo de clase para el avance real en los contenidos de la materia.
2.10 Beneficiarios / Clientes
El público beneficiario de SEBAS incluye:
* Beneficiario principal: estudiantes que están por iniciar o están cursando el ciclo básico universitario de carreras de Licenciatura e Ingeniería en Argentina.


* Beneficiario secundario: estudiantes adultos que retoman sus estudios universitarios después de un período de inactividad académica.


* Beneficiario indirecto: instituciones universitarias y docentes, que recibirán ingresantes con una base de conocimiento más sólida.




2.11 Línea de tiempo. Estimación inicial de entregables.
  

  
  
  
  
  
  
  
  
  
  
  
  
  



        2.12 Referencias
* https://www.reddit.com/r/UBA/comments/1kz445u/es_normal_desanimarse_tan_r%C3%A1pido_en_el_cbc_fadu/
* https://www.lanacion.com.ar/sociedad/uno-de-cada-tres-no-aprueba-el-cbc-nid88098/
* https://exactas.uba.ar/ensenanza/carreras-de-grado/ciencias-fisicas/
* https://www.clarin.com/tecnologia/adictos-celular-mitad-adolescentes-argentinos-pasan-12-horas-dia-telefono-mano_0_J8XsHzftS.html
* https://www.bcu.ac.uk/exams-and-revision/best-ways-to-revise/best-revision-apps
* https://realpolitik.com.ar/nota/63550/los-mejores-modelos-de-celular-para-estudiantes-en-2025/
* https://appitventures.com/blog/create-engaging-mobile-app-onboarding-experiences
* https://www.infobae.com/tecno/2025/07/15/siete-apps-para-estudiar-organizarte-y-trabajar-en-grupo/
* https://www.shiftelearning.com/blogshift/10-cosas-que-llaman-la-atencion-de-los-estudiantes-elearning
* https://www.chalkie.ai/es?tw_source=google&tw_adid=800650586828&tw_campaign=23665536895&tw_kwdid=kwd-1487729466380&gad_source=1&gad_campaignid=23665536895&gbraid=0AAAABCKEgpLMyW_zX5COpwvJPMoAxtd6A&gclid=Cj0KCQjwrZTRBhDSARIsAHidYfdMbN3hxVJKv5zPGrsrhX792VPLqrFyUt2VtiK4xy8p75Fhe-IGeaIaAltUEALw_wcB
* https://www.bookwidgets.com/blog/es/2020/06/20-actividades-didacticas-interactivas-para-el-aula-interactive
* https://es.goodbarber.com/blog/como-crear-app-android-ios-tutorial/
* https://www.capacitarte.org/blog/nota/cual-es-mejor-tecnologia-desarrollo-aplicacion-movil
* https://www.esdesignbarcelona.com/actualidad/diseno-web/todos-los-pasos-que-debes-seguir-para-crear-una-app-desde-cero














































2.13 Glosario


* Firebase: Plataforma de Google que gestiona la base de datos, la autenticación de usuarios y el almacenamiento en la nube.
* GPT-4o mini: Modelo de inteligencia artificial de OpenAI capaz de generar explicaciones y retroalimentación en lenguaje natural.
* IRT (Teoría de Respuesta al Ítem): Modelo matemático que mide el nivel de conocimiento de un estudiante en base a sus respuestas y la dificultad de cada ejercicio.
* Motor adaptativo: Sistema que ajusta el contenido y la dificultad de los ejercicios en función del desempeño real de cada usuario, sin intervención manual.
* NoSQL: Tipo de base de datos flexible y eficiente, ideal para almacenar datos con estructuras variables como los perfiles de habilidad de los usuarios.
* Retroalimentación inmediata: Respuesta instantánea que recibe el estudiante después de contestar un ejercicio, con la explicación del razonamiento correcto.
* STEM: Sigla que agrupa Ciencia, Tecnología, Ingeniería y Matemática. En SEBAS hace referencia a las materias del ciclo básico: Matemática, Física y Química.
* Working Backwards: Metodología que consiste en partir de la experiencia ideal del usuario final y trabajar hacia atrás para definir qué hay que construir.
	

















  

1.  Introducción 
En Argentina, la deserción universitaria en el primer año de las carreras de Licenciatura e Ingeniería representa uno de los problemas más críticos del sistema educativo superior. Una parte significativa de los ingresantes abandona sus estudios durante el ciclo básico, principalmente debido a la falta de preparación en ciencias básicas como Matemática, Álgebra, Análisis Matemático, Física y Química. Esta brecha entre el nivel secundario y las exigencias universitarias no es un problema de capacidad de los estudiantes, sino de preparación previa y acompañamiento en la transición.


La problemática no es nueva, pero sí urgente. Cada año, miles de jóvenes y adultos inician una carrera con entusiasmo y se encuentran, en los primeros meses, con una exigencia para la que no fueron preparados. Muchos lo intentan solos: buscan videos en internet, piden ayuda a compañeros o recurren a tutorías pagas que no siempre están a su alcance. El resultado es frustrante: horas de esfuerzo que no siempre se traducen en resultados, y una sensación de fracaso que, con el tiempo, los lleva al abandono.


SEBAS (Sistema de Ejercitación y Entrenamiento en Ciencias Básicas) surge como propuesta de solución a esta problemática. Su propósito central será reducir esa brecha de conocimiento y acompañar a los estudiantes en uno de los momentos más desafiantes de su trayectoria académica, sin reemplazar al docente ni convertirse en un atajo para evitar el esfuerzo real de aprender.


La aplicación móvil, pensada para funcionar desde el celular que el estudiante ya tiene en la mano, tiene como propuesta incorporar inteligencia artificial para adaptar los ejercicios al ritmo y desempeño individual de cada usuario. Se plantea también integrar mecanismos de gamificación, como puntos, logros y rachas de estudio, con el objetivo de mantener la motivación a lo largo del tiempo, especialmente en los momentos donde la dificultad podría desanimar al estudiante.








SEBAS no busca hacer promesas vacías. No pretende garantizar resultados ni reemplazar el estudio. Lo que se propone es ofrecer una herramienta accesible, gratuita e inteligente para que quienes quieren aprender tengan un punto de apoyo real, disponible en cualquier momento y desde cualquier lugar.


2.  Perfiles Entrevistados


Para entender mejor la problemática antes de diseñar cualquier solución, se realizaron entrevistas a personas que están viviendo o vivieron recientemente el ingreso a la facultad, incluyendo ingresantes actuales, ex alumnos del CBC, adultos que retoman sus estudios y docentes universitarios.


El objetivo fue escuchar experiencias reales: qué fue lo más difícil, cómo estudiaban, qué herramientas usaban, qué les faltó y qué sintieron en esos primeros meses. Esa información de primera mano es la que da forma al Mapa de Empatía que se presenta a continuación, y es la base sobre la cual se construyó toda la propuesta de SEBAS.


Hicimos 5 entrevistas a personas en distintos momentos de ese camino: algunos recién ingresados, otros que ya habían cursado Matemática, Física o Química y las habían aprobado, y algunos que todavía estaban en ese proceso.


Desde el principio decidimos hablar con perfiles muy distintos entre sí. No queríamos quedarnos solo con la mirada del estudiante joven que termina el secundario y arranca la facultad, sino también escuchar a adultos que retoman sus estudios después de años, a alumnos que estuvieron a punto de abandonar y no lo hicieron, y a docentes que ven esta realidad todos los días desde adentro del aula. Esa variedad nos permitió ver el problema desde varios lados a la vez.


La idea no era asumir lo que los estudiantes necesitan, sino escucharlos. Queríamos saber qué fue lo más difícil, cómo estudiaban, qué herramientas usaban, qué les hubiera servido tener y qué sintieron en esos primeros meses. Algunas cosas que nos dijeron confirmaron lo que intuíamos; otras nos sorprendieron y nos hicieron replantearnos partes de la propuesta.


Con todo eso armamos el mapa de empatía de SEBAS. No refleja lo que nosotros creíamos que les pasaba a los estudiantes, sino lo que ellos mismos nos contaron. Ese es el punto de partida de todo el proyecto: antes de pensar en cualquier solución, quisimos entender de verdad a quién va dirigida.




  



3.  Mapa de Empatía 
El Mapa de Empatía es una herramienta de diseño centrado en el usuario que permite comprender en profundidad a la persona a quien va dirigido un producto o servicio. En lugar de enfocarse en datos o estadísticas, busca entender qué piensa, qué siente, qué escucha, qué ve y qué hace esa persona en su vida cotidiana, poniendo especial atención en sus dificultades y en lo que espera obtener.
Se organiza en seis cuadrantes: qué ve el usuario en su entorno, qué oye de las personas que lo rodean, qué piensa y siente internamente, qué dice y hace en su día a día, cuáles son sus principales dolores o frustraciones, y cuáles son las ganancias o resultados que busca alcanzar.
En el caso de SEBAS, el mapa se construyó a partir de las cinco entrevistas realizadas y refleja la experiencia real de los estudiantes que atraviesan o atravesaron el ingreso a la universidad. Su objetivo es asegurarse de que la solución que se propone responda a necesidades concretas y no a suposiciones del equipo.
El siguiente mapa sintetiza los hallazgos de las 5 entrevistas en los 6 cuadrantes clásicos:


* ¿Qué ve?
* ¿Qué piensa y siente?
* ¿Qué oye?
* ¿Qué dice y hace?
* Esfuerzos y Dolores
* Resultados y Ganancias


En el centro se ubica el perfil del usuario típico de SEBAS. Se agregan además dos cuadrantes adicionales con los hallazgos clave surgidos de las entrevistas y las oportunidades concretas que estos representan para el sistema.
















































  



  



4. Conclusiones del Mapa de Empatía
1. El secundario no prepara para la universidad
Uno de los hallazgos más contundentes del proceso de entrevistas es que la escuela secundaria no está brindando a los estudiantes las herramientas necesarias para enfrentar las exigencias del nivel universitario. Tres de los cinco entrevistados lo mencionaron de forma explícita y espontánea, sin que fuera una pregunta directa. Laura lo describió como un choque brutal: creyó que podía con todo y la realidad la golpeó fuerte, llegando al borde del abandono. Florencia señaló que el secundario no la formó para enfrentar la disciplina y exigencia que la facultad requiere. El profesor Antonio, desde su rol docente, confirmó esta visión al observar que los alumnos llegan con el chip de la secundaria, donde todo está más guiado y acompañado. Esta brecha de contenidos y de hábitos de estudio es el problema central que SEBAS tiene la oportunidad de resolver, actuando como puente entre ambos niveles.


2. La motivación es frágil y necesita refuerzo constante
El abandono universitario rara vez ocurre de un día para el otro. Es un proceso gradual donde la
desmotivación se va acumulando hasta que el estudiante decide que no puede más. Las entrevistas revelaron que los principales detonantes de ese proceso son las bajas notas a pesar del esfuerzo, los profesores con mala actitud o poca capacidad de explicar, y la falta de reconocimiento por el progreso alcanzado. Florencia lo expresó claramente: dedicarle tantas horas de estudio y aun así tener la 


posibilidad de desaprobar es devastador. Azul, por su parte, necesita que la incentiven y le den confianza para seguir. En este contexto, la gamificación de SEBAS no es un adorno ni un elemento secundario, es una respuesta directa a una necesidad emocional real del usuario. Los puntos, las rachas, los logros y las insignias funcionan como pequeñas victorias cotidianas que mantienen al estudiante en movimiento, especialmente en los momentos en que la dificultad podría hacerlo abandonar.




3. La diversidad de usuarios exige simplicidad e inclusión
El mapa de empatía dejó en evidencia que el usuario de SEBAS no es un perfil único ni homogéneo. Encontramos desde Azul, de 18 años, nativa digital que ya usa inteligencia artificial naturalmente para estudiar, hasta Juan, de 55 años, que retoma sus estudios después de décadas y encuentra la tecnología actual intimidante. Entre ellos, Laura y Florencia representan a quienes ya vivieron el CBC y desearían haber tenido una herramienta así, y Antonio aporta la mirada crítica del docente que ve el problema desde adentro. Esta diversidad impone una condición fundamental para SEBAS: debe ser intuitivo, accesible y gratuito. Una interfaz compleja o un modelo de suscripción paga eliminaría inmediatamente a perfiles como Juan, que además ya manifestó que las aplicaciones le parecen complicadas y caras. La inclusión no es solo un valor ético del proyecto, es una decisión de diseño que debe estar presente en cada pantalla y en cada decisión técnica.




4. La inteligencia artificial debe guiar, no reemplazar
Un hallazgo que surgió con fuerza desde la perspectiva del profesor Antonio es el riesgo de que los estudiantes usen la tecnología como un atajo para evitar el esfuerzo real de aprender. Cada vez más trabajos universitarios evidencian el uso de IA sin comprensión real del contenido. 


Esto plantea un desafío central para SEBAS: la inteligencia artificial que integra el sistema debe estar diseñada para potenciar el aprendizaje genuino, adaptando los ejercicios al ritmo del usuario, identificando sus 
debilidades y guiándolo hacia la comprensión profunda, pero nunca dándole las respuestas directamente. SEBAS debe lograr que el estudiante piense, se equivoque, corrija y aprenda, con la IA como acompañante inteligente y no como reemplazante del esfuerzo cognitivo. 


























































5. Glosario 


El siguiente glosario define los términos técnicos utilizados en este documento, pensado para lectores que no estén familiarizados con el lenguaje de la tecnología o la educación digital.
* Algoritmo: Conjunto de pasos o instrucciones que una computadora sigue para resolver un problema o tomar una decisión. En SEBAS, los algoritmos deciden qué ejercicio presentarle a cada alumno según su nivel de conocimiento.
* Gamificación: Uso de elementos propios de los videojuegos, como puntos, rachas de estudio, niveles e insignias, dentro de una plataforma educativa. El objetivo es mantener la motivación del estudiante y hacer el aprendizaje más entretenido.
* Interfaz: Todo lo que el usuario ve y con lo que interactúa en una pantalla: botones, menús, colores, textos y diseño general. Una interfaz intuitiva es aquella que cualquier persona puede usar sin necesidad de instrucciones previas.
* Nativa digital: Persona que creció usando tecnología desde temprana edad y que, por tanto, tiene naturalidad e incorporación fluida en el uso de dispositivos móviles, internet y aplicaciones.
* Perfil de usuario: Descripción detallada de las características, necesidades, comportamientos y objetivos de la persona a quien va dirigido un sistema o producto. Permite diseñar soluciones que realmente se adapten a quien las va a usar.
* Plataforma móvil: Sistema informático diseñado para funcionar en teléfonos celulares inteligentes (smartphones). A diferencia de una plataforma de escritorio, se accede desde el celular en cualquier momento y lugar.
* Retroalimentación inmediata: Respuesta instantánea que recibe el estudiante después de responder un ejercicio. Le indica si su respuesta fue correcta o incorrecta y le explica el razonamiento correcto para que pueda aprender del error en el momento.
* Sistema adaptativo: Sistema informático que ajusta automáticamente su comportamiento según las acciones y el desempeño del usuario. En SEBAS, si un alumno responde bien, el sistema le presenta ejercicios más difíciles; si falla, le presenta ejercicios más simples y explicaciones de apoyo.
* STEM: Sigla en inglés que agrupa las disciplinas de Ciencia (Science), Tecnología (Technology), Ingeniería (Engineering) y Matemática (Mathematics). En Argentina, el equivalente más cercano son las materias de ciencias exactas del CBC: Matemática, Física y Química.




















   
  



-  
  



  

  





  

  



  

  



  

  



  







  



1. Introducción
Uno de los aspectos del desarrollo de la aplicación, contempla un Motor Probabilístico (IA Adaptativa/IA Generativa):
* Función: Calcula la probabilidad de éxito o interés del usuario.
* Técnica: Se utiliza la Teoría de Respuesta al Ítem (IRT) para medir la habilidad del usuario y el nivel de dificultad de la pregunta.
* IA Adaptativa: Analiza el tiempo de respuesta, patrones de error y temas favoritos para ajustar el contenido en tiempo real.
Para implementar un motor de IA adaptativa a bajo costo y que no se convierta en una pesadilla de infraestructura, la clave es utilizar Sistemas de Recomendación Basados en Reglas o Probabilística que se ejecuten en tiempo real.


2.El Enfoque: Item Response Theory (IRT)
Conviene utilizar un modelo estadístico-matemático llamado Teoría de Respuesta al Ítem. Es el estándar en plataformas como Duolingo o Khan Academy.
* ¿Cómo funciona? Cada ejercicio tiene un nivel de dificultad intrínseco y cada estudiante tiene un nivel de habilidad estimado.
* La lógica: Si el estudiante resuelve bien un ejercicio difícil, su score sube rápidamente. Si falla uno fácil, baja.
* Implementación: Pueden usar una librería de Python (como catsim) en el backend o implementar la fórmula de probabilidad logística básica.


3.Arquitectura de Bajo Costo
Para mantener los bajos costos durante el desarrollo y testeo, se recomienda una arquitectura Event-Driven:
* Backend: Google Cloud Functions o AWS Lambda (Node.js o Python). Se paga por ejecución.
* Base de Datos: Firebase Firestore o MongoDB Atlas. Almacenan el "Perfil de Habilidad" del usuario.
* Motor de Reglas: Un pequeño script que evalúa el último "set" de respuestas y actualiza el nivel del usuario.


4.Estrategia de Implementación:
Para que la IA sepa qué ejercicio dar después, se divide el contenido en un Grafo de conocimiento


* Niveles de Dificultad: Etiquetar cada ejercicio del 1 al 10 (metadatos).
* Dependencias: Para hacer "Cálculo", el sistema debe verificar que el usuario domina "Álgebra".
* El Algoritmo de Ajuste:




Acierto: Si el usuario responde 3 seguidos bien en nivel 5, el motor salta a nivel 7.
Error: Si falla 2 seguidos, el motor baja a nivel 4 y busca un video/explicación corta antes de seguir.




5.El "Motor de IA" (Opciones técnicas)


Si se quiere usar IA propiamente dicha sin incursionar en gastos de servidores con GPU, estas son las opciones:






Opción
	Descripción
	Costo
	Heurística Logística
	Algoritmo basado en fórmulas matemáticas fijas (IRT).
	 (Código propio)
	OpenAI API (GPT-4o mini)
	El backend le envía el desempeño del alumno y el GPT devuelve el ID del siguiente ejercicio más apto.
	Muy bajo (centavos por miles de tokens)
	TensorFlow Lite
	El modelo de clasificación de dificultad corre dentro del celular del usuario (On-device AI).
	 (Usa el procesador del usuario)
	



Lo más sólido es implementar un Sistema Híbrido:


1.  Base de datos con ejercicios etiquetados por el equipo de desarrollo.
2.  Algoritmo ELO (como el de ajedrez): Si el alumno (Jugador A) vence al ejercicio (Jugador B), su rating sube. Esto es muy fácil de programar, no requiere servidores potentes y es "Inteligencia Computacional" pura.
3. Asegurarse de que la aplicación recolecte el tiempo de respuesta. Un alumno que tarda 5 minutos en un ejercicio fácil tiene un nivel distinto a quien lo hace en 10 segundos, aunque ambos acierten. 4.Propuesta para el Motor de Decisión Adaptativa (el cerebro de la aplicación):
6.El Prompt de Sistema (Si se usa la API de OpenAI)
Si se decide usar GPT-4o mini (la opción más barata y potente para esto), no necesitamos programar el algoritmo de ajuste, sino "configurarlo" mediante un prompt. Este sería el "backend" lógico:


Prompt de Sistema sugerido: "Actúa como un Motor de Evaluación Educativa. La entrada es un JSON con el desempeño del alumno (ID_ejercicio, resultado 0 o 1, tiempo_segundos). La salida debe ser un JSON que contenga:
1.nueva_dificultad: (valor de 1 a 10).
2.tema_recomendado: (string).
3.feedback_pedagogico: (una frase breve de aliento o corrección).
Regla de ajuste: Si el usuario tarda < 30 seg y acierta, sube 2 niveles. Si falla y tardó > 60 seg, baja 1 nivel y recomienda un refuerzo teórico."
7.Lógica de Negocio: El "Dashboard"
Para que la IA funcione, se deben estructurar los datos y crear una tabla de contenidos:
ID Ejercicio
	Materia
	Tema
	Dificultad Inicial (1-10)
	Prerrequisito
	MAT-001
	Matemática
	Ecuaciones Lineales
	2
	Ninguno
	MAT-005
	Matemática
	Ecuaciones Cuadráticas
	5
	MAT-001
	FIS-010
	Física
	Movimiento Rectilíneo
	4
	MAT-001
	

8.El Flujo de Adaptabilidad


Flujo que explica cómo la IA "aprende" del alumno:
1.Evaluación Diagnóstica: El usuario entra y hace 3 ejercicios nivel 5 (intermedio).
2.Cálculo de Perfil: Si hace los 3 bien, el motor lo clasifica como "Avanzado" en ese tema.
3.Bucle de Feedback:


○Estado de Flujo: Si el usuario acierta, la dificultad sube gradualmente para mantenerlo motivado (evita el aburrimiento).
○Andamiaje: Si el usuario falla repetidamente, la IA no solo baja la dificultad, sino que cambia el tipo de contenido (ej. le muestra una infografía antes del siguiente ejercicio).






9.Conclusión


A partir del análisis de las opciones técnicas disponibles, el equipo considera que el enfoque más adecuado para SEBAS es un sistema híbrido que combine el algoritmo ELO como base de adaptabilidad con la API de OpenAI (GPT-4o mini) para la generación de retroalimentación pedagógica personalizada.
Esta decisión se fundamenta en tres criterios: el costo operativo es mínimo dado que ambas opciones funcionan sin infraestructura propia, la complejidad de implementación es manejable para el equipo dentro del cronograma previsto, y el impacto en la experiencia del usuario es significativo ya que permite ofrecer explicaciones personalizadas en lugar de respuestas genéricas.
Sin embargo, dado que la integración con la API de OpenAI depende de factores técnicos y económicos que se evaluarán durante el desarrollo, el equipo define como alternativa de respaldo la implementación de la heurística logística basada en IRT, que no requiere servicios externos y puede funcionar de forma completamente autónoma.
En definitiva, la inteligencia artificial en SEBAS no es un fin en sí mismo, sino un medio para lograr que cada estudiante reciba el ejercicio correcto, en el momento correcto y con la explicación que necesita para seguir avanzando.














































Glosario:


IA Adaptativa: Tipo de inteligencia artificial que aprende del comportamiento del usuario y ajusta automáticamente el contenido o la dificultad según su desempeño. Es como un tutor virtual que se adapta al ritmo de cada estudiante.
Motor Probabilístico: Sistema informático que utiliza cálculos matemáticos basados en probabilidades para tomar decisiones automáticas. En lugar de seguir reglas fijas, evalúa qué tan probable es que algo ocurra y actúa en consecuencia.
IRT — Teoría de Respuesta al Ítem: Modelo estadístico utilizado en educación para medir el nivel de habilidad de un estudiante en función de sus respuestas a ejercicios. Considera tanto la dificultad de cada ejercicio como la capacidad del alumno para calcular un puntaje más preciso que una nota tradicional. Utilizado por plataformas educativas líderes como Duolingo y Khan Academy.
Arquitectura Event-Driven (orientada a eventos): Forma de organizar un sistema informático en la que cada acción del usuario (como responder un ejercicio) dispara automáticamente una respuesta del sistema. Solo consume recursos cuando hay actividad, lo que reduce los costos.
Google Cloud Functions / AWS Lambda: Servicios de computación en la nube ofrecidos por Google y Amazon respectivamente. Permiten ejecutar pequeños programas sin necesidad de tener un servidor propio encendido las 24 horas. Se paga únicamente por cada vez que el programa se ejecuta.
Perfil de Habilidad: Registro digital que almacena el nivel de conocimiento de un estudiante en cada tema. El sistema lo actualiza automáticamente después de cada ejercicio para saber qué tan bien domina cada materia.
Firebase Firestore / MongoDB Atlas: Sistemas de base de datos (almacenamiento organizado de información) que funcionan en la nube. Firebase es un servicio de Google y MongoDB Atlas es independiente. Ambos permiten guardar y consultar datos del usuario de forma rápida y económica.
Grafo de Conocimiento: Mapa digital que representa las relaciones entre temas de estudio. Por ejemplo, indica que para aprender Cálculo primero es necesario dominar Álgebra. Permite al sistema saber en qué orden presentar los contenidos.
Metadatos: Información descriptiva que acompaña a un contenido. En este caso, son las etiquetas que indican el nivel de dificultad, la materia y los prerrequisitos de cada ejercicio, sin ser parte del ejercicio en sí.
Algoritmo ELO: Sistema de puntuación originalmente creado para el ajedrez, que compara el nivel de dos jugadores —en este caso, un estudiante y un ejercicio— para calcular cuántos puntos ganar o perder según el resultado. Es simple, efectivo y no requiere servidores potentes.
Prompt de Sistema: Instrucción inicial que se le da a la inteligencia artificial para definir cómo debe comportarse. Es como entregarle a un empleado un manual de procedimientos antes de que empiece a trabajar.
JSON: Formato estándar para enviar y recibir información entre sistemas informáticos. Es texto estructurado de forma ordenada que permite que distintos programas se entiendan entre sí, similar a un formulario con campos bien definidos.
Dashboard (Panel de control): Pantalla principal de un sistema que muestra información resumida y organizada sobre el estado del usuario: su progreso, materias y nivel de habilidad de forma visual y clara.
Estado de Flujo (Flow): Concepto de psicología educativa que describe el estado ideal de aprendizaje: el nivel de dificultad es lo suficientemente alto para mantener la atención, pero no tan alto como para generar frustración. El sistema busca mantener al estudiante en ese equilibrio.
Andamiaje pedagógico (Scaffolding): Técnica educativa en la que el sistema brinda apoyo adicional (explicaciones, videos o ejemplos) cuando el estudiante tiene dificultades, para ayudarlo a superar el obstáculo antes de continuar con contenido más avanzado.