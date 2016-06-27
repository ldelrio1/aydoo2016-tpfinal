class ExcepcionObjetoEspacialDestruido < Exception

  def initialize(msg='El Objeto Espacial esta destruido. Su masa o vida son menores a Cero')
    super
  end
end
