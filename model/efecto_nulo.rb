require_relative '../model/efecto_de_choque'

class EfectoNulo < EfectoDeChoque

  def gestionar_choque(chocador, chocado)
    @chocador = chocador
    @chocado = chocado
  end
end
