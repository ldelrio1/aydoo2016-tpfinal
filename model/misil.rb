require_relative '../model/objeto_espacial'
require_relative '../model/efecto_nulo'
require_relative '../model/efecto_destructivo_por_unidades'

class Misil < ObjetoEspacial

  def initialize
    super
    @gestor_de_choques = Hash.new
    @gestor_de_choques[Nave] = EfectoDestructivoPorUnidades.new (100)
    @gestor_de_choques[Misil] = EfectoDestructivoPorUnidades.new (100)
    @gestor_de_choques[Bomba] = EfectoNulo.new
    @gestor_de_choques[Asteroide] = EfectoNulo.new
  end
end
