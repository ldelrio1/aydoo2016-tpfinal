class ObjetoEspacial

  attr_accessor :masa, :vida, :esta_vivo, :gestor_de_choques

  def initialize
    @masa = 100
    @vida = 100
    @esta_vivo = true
    @gestor_de_choques = Hash.new {}
  end

  def set_vida (cantidad)
    @vida = cantidad
  end

  def set_masa (cantidad)
    @masa = cantidad
  end

  def actualizar_datos
    if @masa > 0 && @vida > 0
      @esta_vivo = true
    else
      @esta_vivo = false
    end
  end

  def chocar_con (objeto_chocado)
    if self.esta_vivo = true && objeto_chocado.esta_vivo = true
      @gestor_de_choques.fetch(objeto_chocado.class).gestionar_choque(self,objeto_chocado)
      objeto_chocado.gestor_de_choques.fetch(self.class).gestionar_choque(objeto_chocado, self)

    elsif super.esta_vivo = false
      fail ExcepcionObjetoEspacialDestruido.new
    elsif chocado.esta_vivo = false
      fail ExcepcionObjetoEspacialChocadoDestruido.new
    else
      fail ExcepcionObjetosMuertos.new
    end
  end

end
