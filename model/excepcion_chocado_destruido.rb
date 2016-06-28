class ExcepcionObjetoEspacialChocadoDestruido < Exception

  def initialize(msg='El Objeto Espacial chocado esta destruido. Su masa o vida son menores a 1')
    super
  end
end
