require_relative '../model/efecto_de_choque'
require_relative '../model/excepcion_porcentaje_cero'

class EfectoMasa < EfectoDeChoque

  def initialize (porcentaje)
    if porcentaje != 0
      @porcentaje = porcentaje
    else
      fail ExcepcionPorcentajeCero.new
    end
  end

  def gestionar_choque(chocador, chocado)
    efecto_masa = (chocado.masa * @porcentaje / 100)
    chocador.masa += efecto_masa
  end
end
