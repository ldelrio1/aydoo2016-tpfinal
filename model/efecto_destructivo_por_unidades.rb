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
    vida_posterior_al_choque = chocador.vida - @unidades_destructivo
    if vida_posterior_al_choque < 0
      chocador.vida = 0
    else
      chocador.vida -= @unidades_destructivo
    end
  end
end
