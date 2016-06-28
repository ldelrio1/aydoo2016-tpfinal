require 'rspec'
require 'spec_helper'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'Crea Asteroide y settea choques_posibles espera ExcepcionPorcentajeCero' do
    asteroide = Asteroide.new
    expect{asteroide.choques_posibles[Nave] = EfectoMasa.new (0)}.to raise_exception(ExcepcionPorcentajeCero)
  end
end
