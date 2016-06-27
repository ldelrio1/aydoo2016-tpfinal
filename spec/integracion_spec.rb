require 'rspec'
require 'spec_helper'
require_relative '../model/nave'
require_relative '../model/misil'
require_relative '../model/bomba'
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

describe 'Misil contra Misil' do

  it 'Misil1 choca con Misil2 verifica Misil1' do
    misil1 = Misil.new
    misil2 = Misil.new
    misil1.set_vida (150)
    misil2.set_vida (200)
    misil1.chocar_con(misil2)
    vida_misil1 = 50
    expect(misil1.vida).to eq vida_misil1
  end

  it 'Misil1 choca con Misil2 verifica Misil2' do
    misil1 = Misil.new
    misil2 = Misil.new
    misil1.set_vida (150)
    misil2.set_vida (200)
    misil1.chocar_con(misil2)
    vida_misil2 = 100
    expect(misil2.vida).to eq vida_misil2
  end
end

describe 'Misil contra Bomba' do

  it 'Misil choca con Bomba verifica Misil' do
    misil = Misil.new
    bomba = Bomba.new
    misil.chocar_con(bomba)
    vida_misil = 100
    expect(misil.vida).to eq vida_misil
  end

  it 'Misil choca con Bomba verifica Bomba' do
    misil = Misil.new
    bomba = Bomba.new
    bomba.set_vida (500)
    misil.chocar_con(bomba)
    vida_bomba = 250
    expect(bomba.vida).to eq vida_bomba
  end
end

describe 'Misil contra Asteroide' do

  it 'Misil choca con Asteroide verifica vidaMisil' do
    misil = Misil.new
    misil.set_vida (120)
    asteroide = Asteroide.new
    misil.chocar_con(asteroide)
    vida_misil = 120
    expect(misil.vida).to eq vida_misil
  end

  it 'Misil choca con Asteroide verifica masaMisil' do
    misil = Misil.new
    misil.set_masa (70)
    asteroide = Asteroide.new
    misil.chocar_con(asteroide)
    masa_misil = 70
    expect(misil.masa).to eq masa_misil
  end

  it 'Misil choca con Asteroide verifica vidaAsteroide' do
    misil = Misil.new
    asteroide = Asteroide.new
    misil.chocar_con(asteroide)
    vida_asteroide = 100
    expect(asteroide.vida).to eq vida_asteroide
  end

  it 'Misil choca con Asteroide verifica masaAsteroide' do
    misil = Misil.new
    asteroide = Asteroide.new
    asteroide.set_masa (220)
    misil.chocar_con(asteroide)
    masa_asteroide = 220
    expect(asteroide.masa).to eq masa_asteroide
  end
end

describe 'Misil contra Estrella' do

  it 'Misil choca con Estrella verifica masaMisil' do
    misil = Misil.new
    misil.set_masa (340)
    estrella = Estrella.new
    misil.chocar_con(estrella)
    masa_misil = 340
    expect(misil.masa).to eq masa_misil
  end

  it 'Misil choca con Estrella verifica vidaEstrella' do
    misil = Misil.new
    estrella = Estrella.new
    estrella.set_vida (40)
    misil.chocar_con(estrella)
    vida_estrella = 40
    expect(estrella.vida).to eq vida_estrella
  end
end

describe 'Bomba contra Bomba' do

  it 'Bomba1 choca con Bomba2 verifica Bomba1' do
    bomba1 = Bomba.new
    bomba2 = Bomba.new
    bomba1.chocar_con(bomba2)
    vida_bomba1 = 0
    expect(bomba1.vida).to eq vida_bomba1
  end

  it 'Bomba1 choca con Bomba2 verifica Bomba2' do
    bomba1 = Bomba.new
    bomba2 = Bomba.new
    bomba2.set_vida (140)
    bomba1.chocar_con(bomba2)
    vida_bomba2 = 40
    expect(bomba2.vida).to eq vida_bomba2
  end
end

describe 'Bomba contra Asteroide' do

  it 'Bomba choca con Asteroide verifica Bomba' do
    bomba = Bomba.new
    bomba.set_vida (150)
    asteroide = Asteroide.new
    bomba.chocar_con(asteroide)
    vida_bomba = 0
    expect(bomba.vida).to eq vida_bomba
  end

  it 'Bomba choca con Asteroide verifica Asteroide' do
    bomba = Bomba.new
    asteroide = Asteroide.new
    bomba.chocar_con(asteroide)
    vida_asteroide = 100
    expect(asteroide.vida).to eq vida_asteroide
  end
end
