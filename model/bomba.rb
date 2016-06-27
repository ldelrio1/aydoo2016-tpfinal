require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo_por_porcentaje'
require_relative '../model/efecto_destructivo_por_unidades'

class Bomba < ObjetoEspacial

  def initialize
    super
    @gestor_de_choques = Hash.new
    @gestor_de_choques[Nave] = EfectoDestructivoPorUnidades.new (100)
    @gestor_de_choques[Misil] = EfectoDestructivoPorPorcentaje.new (50)
    @gestor_de_choques[Bomba] = EfectoDestructivoPorUnidades.new (100)
    @gestor_de_choques[Asteroide] = EfectoDestructivoPorPorcentaje.new (100)
    @gestor_de_choques[Estrella] = EfectoDestructivoPorUnidades.new (100)

  end
end
