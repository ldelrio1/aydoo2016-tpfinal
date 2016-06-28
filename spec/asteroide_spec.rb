require 'rspec'
require 'spec_helper'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'crea Asteroide y settea gestorDeChoques espera ExcepcionPorcentajeCero' do
    asteroide = Asteroide.new
    expect{asteroide.gestor_de_choques[Nave] = EfectoMasa.new (0)}.to raise_exception(ExcepcionPorcentajeCero)
  end

end
