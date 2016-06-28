require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo_por_porcentaje'

class Estrella < ObjetoEspacial

  def initialize
    super
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDestructivoPorPorcentaje.new (100)
    @choques_posibles[Misil] = EfectoNulo.new
    @choques_posibles[Bomba] = EfectoDestructivoPorPorcentaje.new (100)
    @choques_posibles[Asteroide] = EfectoDestructivoPorPorcentaje.new (100)
    @choques_posibles[Estrella] = EfectoDestructivoPorPorcentaje.new (100)
  end
end
