class ExcepcionNumeroIngresado < Exception

  def initialize(msg='Ha ingresado un numero incorrecto. Ingrese un numero positivo')
    super
  end
end
