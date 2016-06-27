class ExcepcionPorcentajeCero < Exception

  def initialize(msg='Ha ingresado porcentaje incorrecto. Ingrese un porcentaje distinto de Cero')
    super
  end
end
