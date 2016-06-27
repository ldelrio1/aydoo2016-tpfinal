require 'rspec'
require 'spec_helper'
require_relative '../model/nave'
require_relative '../model/misil'

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

  it 'verifica que la nave esta con vida al iniciar' do
    mi_nave = Nave.new
    esta_vivo = true
    expect(mi_nave.esta_vivo).to eq esta_vivo
  end

  it 'verifica que la nave no esta viva cuando vida es cero' do
    mi_nave = Nave.new
    mi_nave.set_vida (0)
    mi_nave.actualizar_datos
    esta_vivo = false
    expect(mi_nave.esta_vivo).to eq esta_vivo
  end

  it 'verifica que la nave no esta viva cuando masa es cero' do
    mi_nave = Nave.new
    mi_nave.set_masa (0)
    mi_nave.actualizar_datos
    esta_vivo = false
    expect(mi_nave.esta_vivo).to eq esta_vivo
  end
end
