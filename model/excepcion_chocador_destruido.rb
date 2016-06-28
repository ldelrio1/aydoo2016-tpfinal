class ExcepcionObjetoEspacialChocadorDestruido < Exception

  def initialize(msg='El Objeto Espacial chocador esta destruido. Su masa o vida son menores a 1')
    super
  end
end
