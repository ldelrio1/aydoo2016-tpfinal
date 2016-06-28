Revision realizada por Emiliano Veppo

Observación 1: Smells en que todos los test esten ubicados en integracion_spec.rb.
Respuesta: 

Observación 2: ¿Qué pasaria si agrego un nuevo efecto a un objeto? (Principio open close).
Respuesta: Si agrego un nuevo objeto simplemente tendría que crear dicha clase y declarar cómo van a ser los choques con los demás 
objetos; asímismo tengo que agregar el comportamiento producto del choque con este nuevo objeto en las demás clases con que quiero 
que el nuevo objeto interactúe.

Observación 3: Quizás comentaría por que no hay implementacion en ciertos métodos (clase EfectoDeChoque), si es por algún motivo en particular.
Respuesta: 

Observación 4: Smells en los if-else de la clase ObjetoEspacial.
Respuesta: Rechazado, creo que son necesarios para poder manejar las excepciones de forma clara y no genérica.

