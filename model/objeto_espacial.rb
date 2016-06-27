class ObjetoEspacial

  attr_accessor :masa, :vida, :esta_vivo

  def initialize
    @masa = 100
    @vida = 100
    @esta_vivo = true
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
    if super.esta_vivo = true && chocado.esta_vivo = true

    elsif super.esta_vivo = false
      fail ExcepcionObjetoEspacialDestruido.new
    elsif chocado.esta_vivo = false
      fail ExcepcionObjetoEspacialChocadoDestruido.new
    else
      fail ExcepcionObjetosMuertos.new
    end
  end
end
