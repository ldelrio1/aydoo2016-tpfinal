require_relative '../model/efecto_de_choque'

class EfectoMasa < EfectoDeChoque

  def initialize (porcentaje)
      @porcentaje = porcentaje
  end

  def gestionar_choque(chocador, chocado)
    efecto_masa = (chocado.masa * @porcentaje / 100)
    chocador.masa += efecto_masa
  end
end
