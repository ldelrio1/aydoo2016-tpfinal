require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo_por_porcentaje'
require_relative '../model/efecto_destructivo_por_unidades'

class Bomba < ObjetoEspacial

  def initialize
    super
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDestructivoPorUnidades.new (100)
    @choques_posibles[Misil] = EfectoDestructivoPorPorcentaje.new (50)
    @choques_posibles[Bomba] = EfectoDestructivoPorUnidades.new (100)
    @choques_posibles[Asteroide] = EfectoDestructivoPorPorcentaje.new (100)
    @choques_posibles[Estrella] = EfectoDestructivoPorUnidades.new (100)

  end
end
