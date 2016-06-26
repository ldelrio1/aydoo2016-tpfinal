require_relative '../model/objeto_espacial'

class Nave < ObjetoEspacial

  def initialize
    super
  end

  def chocar(chocado)

    if super.esta_vivo = true && chocado.esta_vivo = true

    else

    end
  end

  def chocar_nave
    @vida = @vida - 100
  end

  def chocar_misil
    @vida = @vida - 80
  end

  def chocar_bomba
    @vida = @vida - 50
  end

end
