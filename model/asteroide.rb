require_relative '../model/objeto_espacial'
require_relative '../model/efecto_masa_positivo'

class Asteroide < ObjetoEspacial

  def initialize
    super
    @gestor_de_choques = Hash.new
    @gestor_de_choques[Nave] = EfectoMasaPositivo.new (10)
  end

end
