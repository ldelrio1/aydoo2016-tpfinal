require_relative '../model/excepcion_destruido'
require_relative '../model/excepcion_dos_objetos_muertos'
require_relative '../model/excepcion_chocado_destruido'

class ObjetoEspacial

  attr_accessor :masa, :vida, :esta_vivo, :gestor_de_choques

  def initialize
    @masa = 100
    @vida = 100
    @esta_vivo = true
    @gestor_de_choques = Hash.new {}
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

      @gestor_de_choques.fetch(objeto_chocado.class).gestionar_choque(self,objeto_chocado)
      objeto_chocado.gestor_de_choques.fetch(self.class).gestionar_choque(objeto_chocado, objeto_chocador_original)

      self.actualizar_estado
      objeto_chocado.actualizar_estado
    elsif !self.esta_vivo && objeto_chocado.esta_vivo
      fail ExcepcionObjetoEspacialDestruido.new
    elsif !objeto_chocado.esta_vivo && self.esta_vivo
      fail ExcepcionObjetoEspacialChocadoDestruido.new
    elsif !self.esta_vivo && !objeto_chocado.esta_vivo
      fail ExcepcionObjetosMuertos.new
    end
  end
end
