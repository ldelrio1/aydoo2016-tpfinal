require_relative '../model/objeto_espacial'
require_relative '../model/efecto_masa'

class Asteroide < ObjetoEspacial

  def initialize
    super
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoMasa.new (10)
    @choques_posibles[Misil] = EfectoNulo.new
    @choques_posibles[Bomba] = EfectoNulo.new
    @choques_posibles[Asteroide] = EfectoNulo.new
    @choques_posibles[Estrella] = EfectoNulo.new
  end

end
