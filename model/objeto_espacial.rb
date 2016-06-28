class ObjetoEspacial

  attr_accessor :masa, :vida, :esta_vivo, :choques_posibles

  def initialize
    @masa = 100
    @vida = 100
    @esta_vivo = true
    @choques_posibles = Hash.new {}
  end

  def actualizar_estado
    if @masa > 0 && @vida > 0
      @esta_vivo = true
    else
      @esta_vivo = false
    end
  end

  def chocar_con (objeto_chocado)
    if self.esta_vivo && objeto_chocado.esta_vivo

      objeto_chocador_original = (self.class).new
      objeto_chocador_original.vida = self.vida
      objeto_chocador_original.masa = self.masa

      @choques_posibles.fetch(objeto_chocado.class).gestionar_choque(self,objeto_chocado)
      objeto_chocado.choques_posibles.fetch(self.class).gestionar_choque(objeto_chocado, objeto_chocador_original)

      self.actualizar_estado
      objeto_chocado.actualizar_estado

    elsif !self.esta_vivo
      fail ExcepcionObjetoEspacialChocadorDestruido.new
    elsif !objeto_chocado.esta_vivo
      fail ExcepcionObjetoEspacialChocadoDestruido.new
    end
  end
end
