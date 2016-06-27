require_relative '../model/objeto_espacial'
require_relative '../model/efecto_masa'

class Asteroide < ObjetoEspacial

  def initialize
    super
    @gestor_de_choques = Hash.new
    @gestor_de_choques[Nave] = EfectoMasa.new (10)
    @gestor_de_choques[Misil] = EfectoNulo.new
    @gestor_de_choques[Bomba] = EfectoNulo.new
    @gestor_de_choques[Asteroide] = EfectoNulo.new
    @gestor_de_choques[Estrella] = EfectoNulo.new
  end

end
