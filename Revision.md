Revision realizada por Emiliano Veppo

Observación 1: Smells en que todos los test esten ubicados en integracion_spec.rb.
Respuesta: Se cambia nombre de archivo de Test (integracion_de_choques_spec.rb) para clarificar su accionar.
Creo que esos Test deben estar en ese archivo ya que se prueba interacción entre objetos. Si esos Test estuviesen
en cada Test de objeto no serían pruebas unitarias.

Observación 2: ¿Qué pasaría si agrego un nuevo efecto a un objeto? (Principio open close).
Respuesta: Si agrego un nuevo objeto simplemente tendria que crear dicha clase y declarar como van a ser los choques con los demás 
objetos; asimismo tengo que agregar el comportamiento producto del choque con este nuevo objeto en las demas clases con que quiero 
que el nuevo objeto interactúe.

Observación 3: Quizás comentaría por qué no hay implementación en ciertos métodos (clase EfectoDeChoque), si es por algún motivo en particular.
Respuesta: Clase efecto_de_choque es una clase Abstracta, tiene el modelo para sus clases hijas.

Observacion 4: Smells en los if-else de la clase ObjetoEspacial.
Respuesta: Rechazado, creo que son necesarios para poder manejar las excepciones de forma clara y no generica.

