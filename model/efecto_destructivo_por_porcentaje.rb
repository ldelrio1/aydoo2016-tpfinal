require_relative '../model/efecto_de_choque'

class EfectoDestructivoPorPorcentaje < EfectoDeChoque

  def initialize (porcentaje)
    if porcentaje > 0
      @porcentaje = porcentaje
    else
      fail ExcepcionNumeroIngresado.new
    end
  end

  def gestionar_choque(chocador, chocado)
    descuento = (chocador.vida * @porcentaje / 100)
    chocador.vida -= descuento
  end
end
