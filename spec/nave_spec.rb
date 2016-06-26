require 'rspec'
require_relative '../model/nave'

describe 'Nave' do

  it 'verifica masa inicial' do
    mi_nave = Nave.new
    masa_inicial_esperada = 100
    expect(mi_nave.vida).to eq masa_inicial_esperada
  end

  it 'verifica vida inicial' do
    mi_nave = Nave.new
    vida_inicial_esperada = 100
    expect(mi_nave.vida).to eq vida_inicial_esperada
  end

end
