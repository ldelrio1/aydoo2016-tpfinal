# Tp Final de AyDOO 2016

## Realizado por: Lucas Del Rio

## Revisado por: Emiliano Veppo

## Profesor: Nicolás Páez

Consigna: https://docs.google.com/document/d/1zTeZgcZV5BGf79o07haCwtE7CuF5fEOjnFuonX6u_k0/edit#heading=h.5o59vxme7yt

# Decisiones de Diseño:

* Se comenzó indentificando que Nave, Asteroide, Misil, Bomba y Estrella tienen un comportamiento común por los que son hijos
de una clase objeto_espacial. Este comportamiento común es tener: vida, masa, saber si está vivo y poder chocar.
Por lo que cree una clase objeto_espacial, que funciona como abstracta y una clase nave que la hereda.

* Se utilizó un Diccionario, Hash, para que cada objeto maneje sus choques_posibles.
Cada objeto en su Hash tendrá a otro objeto como "clave" y el "valor" el efecto del choque con ese objeto.

* Para los efectos de los choques se creó una clase efecto_de_choque, que funciona como abstracta, y clases que la heredan.
Las clases que la heredan son los efectos de choque concretos: efecto_nulo, efecto_constructivo, efecto_masa, 
efecto_destructivo_por_unidades y efecto_destructivo_por_porcentaje. Estos efectos se choque cada uno resuelve el problema
de como queda el objeto después de la colisión, cómo cambia su estado de vida y masa.


* Como los objetos tenían las mismas características al crearse; vida = 100, masa = 100, esta_vivo = true; se pensó que 
no era necesario hacer Test unitarios de todos los objetos_espaciales. 
Para Testear los choques entre los objetos y los posteriores estados se decidió tener una única clase de Test 
(misma explicación en Revisión) ya que como los choques incluían a más de un objeto sería mejor una prueba de esta manera.
Estos Test de choques fueron divididos en "subclases" (describe) para poder identificar cada una de las colisiones 
probadas.
Los Test realizados alcanzan un 100% de cobertura contemplando los casos más relevantes.
