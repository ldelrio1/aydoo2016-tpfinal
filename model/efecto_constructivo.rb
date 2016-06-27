require_relative '../model/efecto_de_choque'

class EfectoConstructivo < EfectoDeChoque

  def gestionar_choque(chocador, chocado)
    chocador.vida += chocado.vida
  end
end
