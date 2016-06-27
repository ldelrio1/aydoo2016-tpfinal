require_relative '../model/objeto_espacial'
require_relative '../model/efecto_masa'

class Asteroide < ObjetoEspacial

  def initialize
    super
    @gestor_de_choques = Hash.new
    @gestor_de_choques[Nave] = EfectoMasa.new (10)
    @gestor_de_choques[Misil] = EfectoNulo.new
  end

end
