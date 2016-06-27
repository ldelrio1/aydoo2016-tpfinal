require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo_por_porcentaje'

class Estrella < ObjetoEspacial

  def initialize
    super
    @gestor_de_choques = Hash.new
    @gestor_de_choques[Nave] = EfectoDestructivoPorPorcentaje.new (100)
    @gestor_de_choques[Misil] = EfectoNulo.new
    @gestor_de_choques[Bomba] = EfectoDestructivoPorPorcentaje.new (100)
    @gestor_de_choques[Asteroide] = EfectoDestructivoPorPorcentaje.new (100)
    @gestor_de_choques[Estrella] = EfectoDestructivoPorPorcentaje.new (100)
  end
end
