require_relative '../model/efecto_de_choque'

class EfectoDestructivoPorUnidades < EfectoDeChoque

  def initialize (unidades)
    if unidades > 0
      @unidades_destructivo = unidades
    else
      fail ExcepcionNumeroIngresado.new
    end
  end

  def gestionar_choque(chocador, chocado)
    chocador.vida -= @unidades_destructivo
  end
end
