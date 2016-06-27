require_relative '../model/objeto_espacial'

class Bomba < ObjetoEspacial

  def initialize
    super
    @gestor_de_choques = Hash.new
    @gestor_de_choques[Nave] = EfectoDestructivo.new (100)
  end
end
