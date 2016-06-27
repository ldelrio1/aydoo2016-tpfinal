require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo_por_unidades'
require_relative '../model/efecto_masa'
require_relative '../model/efecto_constructivo'


class Nave < ObjetoEspacial

  def initialize
    super
    @gestor_de_choques = Hash.new
    @gestor_de_choques[Nave] = EfectoDestructivoPorUnidades.new (100)
    @gestor_de_choques[Misil] = EfectoDestructivoPorUnidades.new (80)
    @gestor_de_choques[Bomba] = EfectoDestructivoPorUnidades.new (50)
    @gestor_de_choques[Asteroide] = EfectoMasa.new (-50)
    @gestor_de_choques[Estrella] = EfectoConstructivo.new
  end

end
