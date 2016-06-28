require_relative '../model/objeto_espacial'
require_relative '../model/efecto_nulo'
require_relative '../model/efecto_destructivo_por_unidades'

class Misil < ObjetoEspacial

  def initialize
    super
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDestructivoPorUnidades.new (100)
    @choques_posibles[Misil] = EfectoDestructivoPorUnidades.new (100)
    @choques_posibles[Bomba] = EfectoNulo.new
    @choques_posibles[Asteroide] = EfectoNulo.new
    @choques_posibles[Estrella] = EfectoNulo.new

  end
end
