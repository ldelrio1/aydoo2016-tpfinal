class ExcepcionObjetoEspacialChocadoDestruido < Exception

  def initialize(msg='El Objeto Espacial que fue chocado ya estaba destruido. Su masa o vida son menores a Cero')
    super
  end
end
