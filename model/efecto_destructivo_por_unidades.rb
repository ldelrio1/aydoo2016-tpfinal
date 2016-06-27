require_relative '../model/efecto_de_choque'

class EfectoDestructivoPorUnidades < EfectoDeChoque

  def initialize (unidades)
    if unidades > 0
      @unidades_destructivo = unidades
    else
    end
  end

  def gestionar_choque(chocador, chocado)
    @objeto_chocador = chocador
    vida_chocador = @objeto_chocador.vida
    @objeto_chocador.vida = vida_chocador - @unidades_destructivo
  end
end
