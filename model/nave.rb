require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo_por_unidades'
require_relative '../model/efecto_masa'
require_relative '../model/efecto_constructivo'


class Nave < ObjetoEspacial

  def initialize
    super
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDestructivoPorUnidades.new (100)
    @choques_posibles[Misil] = EfectoDestructivoPorUnidades.new (80)
    @choques_posibles[Bomba] = EfectoDestructivoPorUnidades.new (50)
    @choques_posibles[Asteroide] = EfectoMasa.new (-50)
    @choques_posibles[Estrella] = EfectoConstructivo.new
  end

end
