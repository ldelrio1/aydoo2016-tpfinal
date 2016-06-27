require_relative '../model/efecto_de_choque'

class EfectoMasaPositivo < EfectoDeChoque

  def initialize (porcentaje)
    if porcentaje > 0
      @porcentaje = porcentaje
    else
      fail ExcepcionNumeroIngresado.new
    end
  end

  def gestionar_choque(chocador, chocado)
    aumento = (chocado.masa * @porcentaje / 100)
    chocador.masa += aumento
  end
end
