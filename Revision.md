Revision realizada por Emiliano Veppo

Observaci�n 1: Smells en que todos los test esten ubicados en integracion_spec.rb.
Respuesta: 

Observaci�n 2: �Qu� pasaria si agrego un nuevo efecto a un objeto? (Principio open close).
Respuesta: Si agrego un nuevo objeto simplemente tendr�a que crear dicha clase y declarar c�mo van a ser los choques con los dem�s 
objetos; as�mismo tengo que agregar el comportamiento producto del choque con este nuevo objeto en las dem�s clases con que quiero 
que el nuevo objeto interact�e.

Observaci�n 3: Quiz�s comentar�a por que no hay implementacion en ciertos m�todos (clase EfectoDeChoque), si es por alg�n motivo en particular.
Respuesta: 

Observaci�n 4: Smells en los if-else de la clase ObjetoEspacial.
Respuesta: Rechazado, creo que son necesarios para poder manejar las excepciones de forma clara y no gen�rica.

