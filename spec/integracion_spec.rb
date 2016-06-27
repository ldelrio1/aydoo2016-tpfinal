require 'rspec'
require 'spec_helper'
require_relative '../model/nave'
require_relative '../model/misil'
require_relative '../model/asteroide'
require_relative '../model/estrella'


describe 'Nave contra Nave' do

  it 'Nave1 choca con Nave2 verifica Nave1' do
    nave1 = Nave.new
    nave1.set_vida 200
    nave2 = Nave.new
    nave2.set_vida 200
    nave1.chocar_con(nave2)
    vida_nave1 = 100
    expect(nave1.vida).to eq vida_nave1
    end

  it 'Nave1 choca con Nave2 verifica Nave2' do
    nave1 = Nave.new
    nave1.set_vida 200
    nave2 = Nave.new
    nave2.set_vida 100
    nave1.chocar_con(nave2)
    vida_nave2 = 0
    expect(nave2.vida).to eq vida_nave2
  end
end

describe 'Nave contra Misil' do

  it 'Nave choca con Misil verifica Nave' do
    nave = Nave.new
    misil = Misil.new
    nave.chocar_con(misil)
    vida_nave = 20
    expect(nave.vida).to eq vida_nave
  end

  it 'Nave choca con Misil verifica Misil' do
    nave = Nave.new
    misil = Misil.new
    nave.chocar_con(misil)
    vida_misil = 0
    expect(misil.vida).to eq vida_misil
  end
end

describe 'Nave contra Bomba' do

  it 'Nave choca con Bomba verifica Nave' do
    nave = Nave.new
    bomba = Bomba.new
    nave.chocar_con(bomba)
    vida_nave = 50
    expect(nave.vida).to eq vida_nave
  end

  it 'Nave choca con Bomba verifica Bomba' do
    nave = Nave.new
    bomba = Bomba.new
    nave.chocar_con(bomba)
    vida_bomba = 0
    expect(bomba.vida).to eq vida_bomba
  end
end

describe 'Nave contra Asteroide' do

  it 'Nave choca con Asteroide verifica Nave' do
    nave = Nave.new
    asteroide = Asteroide.new
    nave.chocar_con(asteroide)
    masa_nave = 50
    expect(nave.masa).to eq masa_nave
  end

  it 'Nave choca con Asteroide verifica Asteroide' do
    nave = Nave.new
    asteroide = Asteroide.new
    nave.chocar_con(asteroide)
    masa_asteroide = 110
    expect(asteroide.masa).to eq masa_asteroide
  end
end

describe 'Nave contra Estrella' do

  it 'Nave choca con Estrella verifica Nave' do
    nave = Nave.new
    estrella = Estrella.new
    nave.chocar_con(estrella)
    vida_nave = 200
    expect(nave.vida).to eq vida_nave
  end

  it 'Nave choca con Estrella verifica Estrella' do
    nave = Nave.new
    estrella = Estrella.new
    nave.chocar_con(estrella)
    vida_estrella = 0
    expect(estrella.vida).to eq vida_estrella
  end
end
