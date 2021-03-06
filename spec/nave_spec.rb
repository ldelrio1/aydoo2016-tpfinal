require 'rspec'
require 'spec_helper'
require_relative '../model/nave'
require_relative '../model/misil'

describe 'Nave' do

  it 'Verifica masa inicial' do
    mi_nave = Nave.new
    masa_inicial_esperada = 100
    expect(mi_nave.vida).to eq masa_inicial_esperada
  end

  it 'Verifica vida inicial' do
    mi_nave = Nave.new
    vida_inicial_esperada = 100
    expect(mi_nave.vida).to eq vida_inicial_esperada
  end

  it 'Verifica que la Nave esta con vida al iniciar' do
    mi_nave = Nave.new
    esta_vivo = true
    expect(mi_nave.esta_vivo).to eq esta_vivo
  end

  it 'Verifica que la Nave no esta viva cuando vida es cero' do
    mi_nave = Nave.new
    mi_nave.vida = 0
    mi_nave.actualizar_estado
    esta_vivo = false
    expect(mi_nave.esta_vivo).to eq esta_vivo
  end

  it 'Verifica que la Nave no esta viva cuando masa es cero' do
    mi_nave = Nave.new
    mi_nave.masa = 0
    mi_nave.actualizar_estado
    esta_vivo = false
    expect(mi_nave.esta_vivo).to eq esta_vivo
  end
end
