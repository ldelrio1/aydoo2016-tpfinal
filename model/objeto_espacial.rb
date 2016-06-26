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

  def esta_vivo?
    if @masa > 0 && @vida > 0
      @esta_vivo = true
    else
      @esta_vivo = false
    end
  end
end
