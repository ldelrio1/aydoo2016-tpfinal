class ExcepcionDosObjetosMuertos < Exception

  def initialize(msg='Los dos objetos han muerto. Su masa o vida son menores a Cero')
    super
  end
end
