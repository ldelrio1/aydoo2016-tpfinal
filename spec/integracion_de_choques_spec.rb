require 'rspec'
require 'spec_helper'
require_relative '../model/nave'
require_relative '../model/misil'
require_relative '../model/bomba'
require_relative '../model/asteroide'
require_relative '../model/estrella'
require_relative '../model/excepcion_chocador_destruido'
require_relative '../model/excepcion_chocado_destruido'

describe 'Nave contra Nave' do

  it 'Nave1 choca con Nave2 verifica Nave1' do
    nave1 = Nave.new
    nave1.vida = 200
    nave2 = Nave.new
    nave2.vida = 200
    nave1.chocar_con(nave2)
    vida_nave1 = 100
    expect(nave1.vida).to eq vida_nave1
  end

  it 'Nave1 choca con Nave2 verifica Nave2' do
    nave1 = Nave.new
    nave1.vida = 200
    nave2 = Nave.new
    nave2.vida = 100
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
    nave.masa = 120
    nave.chocar_con(asteroide)
    masa_nave = 70
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
    misil1.vida = 150
    misil2.vida = 200
    misil1.chocar_con(misil2)
    vida_misil1 = 50
    expect(misil1.vida).to eq vida_misil1
  end

  it 'Misil1 choca con Misil2 verifica Misil2' do
    misil1 = Misil.new
    misil2 = Misil.new
    misil1.vida = 150
    misil2.vida = 200
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
    bomba.vida = 500
    misil.chocar_con(bomba)
    vida_bomba = 250
    expect(bomba.vida).to eq vida_bomba
  end
end

describe 'Misil contra Asteroide' do

  it 'Misil choca con Asteroide verifica vida Misil' do
    misil = Misil.new
    misil.vida = 120
    asteroide = Asteroide.new
    misil.chocar_con(asteroide)
    vida_misil = 120
    expect(misil.vida).to eq vida_misil
  end

  it 'Misil choca con Asteroide verifica masa Misil' do
    misil = Misil.new
    misil.masa = 70
    asteroide = Asteroide.new
    misil.chocar_con(asteroide)
    masa_misil = 70
    expect(misil.masa).to eq masa_misil
  end

  it 'Misil choca con Asteroide verifica vida Asteroide' do
    misil = Misil.new
    asteroide = Asteroide.new
    misil.chocar_con(asteroide)
    vida_asteroide = 100
    expect(asteroide.vida).to eq vida_asteroide
  end

  it 'Misil choca con Asteroide verifica masa Asteroide' do
    misil = Misil.new
    asteroide = Asteroide.new
    asteroide.masa = 220
    misil.chocar_con(asteroide)
    masa_asteroide = 220
    expect(asteroide.masa).to eq masa_asteroide
  end
end

describe 'Misil contra Estrella' do

  it 'Misil choca con Estrella verifica masa Misil' do
    misil = Misil.new
    misil.masa = 340
    estrella = Estrella.new
    misil.chocar_con(estrella)
    masa_misil = 340
    expect(misil.masa).to eq masa_misil
  end

  it 'Misil choca con Estrella verifica vida Estrella' do
    misil = Misil.new
    estrella = Estrella.new
    estrella.vida = 40
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
    bomba2.vida = 140
    bomba1.chocar_con(bomba2)
    vida_bomba2 = 40
    expect(bomba2.vida).to eq vida_bomba2
  end
end

describe 'Bomba contra Asteroide' do

  it 'Bomba choca con Asteroide verifica Bomba' do
    bomba = Bomba.new
    bomba.vida = 150
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

describe 'Bomba contra Estrella' do

  it 'Bomba choca con Estrella verifica Bomba' do
    bomba = Bomba.new
    bomba.vida = 125
    estrella = Estrella.new
    bomba.chocar_con(estrella)
    vida_bomba = 25
    expect(bomba.vida).to eq vida_bomba
  end

  it 'Bomba choca con Estrella verifica Estrella' do
    bomba = Bomba.new
    bomba.vida = 125
    estrella = Estrella.new
    estrella.vida = 205
    bomba.chocar_con(estrella)
    vida_estrella = 0
    expect(estrella.vida).to eq vida_estrella
  end
end

describe 'Asteroide contra Asteroide' do

  it 'Asteroide1 choca con Asteroide2 verifica masa Asteroide1' do
    asteroide1 = Asteroide.new
    asteroide2 = Asteroide.new
    asteroide1.chocar_con (asteroide2)
    masa_asteroide1 = 100
    expect(asteroide1.masa).to eq masa_asteroide1
  end

  it 'Asteroide1 choca con Asteroide2 verifica vida Asteroide1' do
    asteroide1 = Asteroide.new
    asteroide2 = Asteroide.new
    asteroide1.chocar_con (asteroide2)
    vida_asteroide1 = 100
    expect(asteroide1.vida).to eq vida_asteroide1
  end

  it 'Asteroide1 choca con Asteroide2 verifica masa Asteroide2' do
    asteroide1 = Asteroide.new
    asteroide2 = Asteroide.new
    asteroide2.masa = 500
    asteroide1.chocar_con (asteroide2)
    masa_asteroide2 = 500
    expect(asteroide2.masa).to eq masa_asteroide2
  end

  it 'Asteroide1 choca con Asteroide2 verifica vida Asteroide2' do
    asteroide1 = Asteroide.new
    asteroide2 = Asteroide.new
    asteroide1.chocar_con (asteroide2)
    vida_asteroide2 = 100
    expect(asteroide2.vida).to eq vida_asteroide2
  end

end

describe 'Asteroide contra Estrella' do

  it 'Asteroide choca Estrella verifica Asteroide' do
    asteroide = Asteroide.new
    asteroide.vida = 180
    estrella = Estrella.new
    asteroide.chocar_con (estrella)
    vida_asteroide = 180
    expect(asteroide.vida).to eq vida_asteroide
  end

  it 'Asteroide choca Estrella verifica Estrella' do
    asteroide = Asteroide.new
    estrella = Estrella.new
    estrella.vida = 300
    asteroide.chocar_con (estrella)
    vida_estrella = 0
    expect(estrella.vida).to eq vida_estrella
  end
end

describe 'Estrella1 contra Estrella2' do

  it 'Estrella1 choca Estrella2 verifica Estrella1' do
    estrella1 = Estrella.new
    estrella1.vida = 200
    estrella2 = Estrella.new
    estrella2.vida = 200
    estrella1.chocar_con (estrella2)
    vida_estrella1 = 0
    expect(estrella1.vida).to eq vida_estrella1
  end

  it 'Estrella1 choca Estrella2 verifica Estrella2' do
    estrella1 = Estrella.new
    estrella1.vida = 200
    estrella2 = Estrella.new
    estrella2.vida = 200
    estrella1.chocar_con (estrella2)
    vida_estrella2 = 0
    expect(estrella2.vida).to eq vida_estrella2
  end
end

describe 'Excepcion en choque con objeto sin vida' do

  it 'Objeto chocador sin vida espera ExcepcionObjetoEspacialDestruido' do
    nave = Nave.new
    misil = Misil.new
    misil.chocar_con (nave)
    asteroide = Asteroide.new
    expect{misil.chocar_con(asteroide)}.to raise_exception(ExcepcionObjetoEspacialChocadorDestruido)
  end

  it 'Objeto chocado sin vida espera ExcepcionChocadoDestruido' do
    nave = Nave.new
    misil = Misil.new
    misil.chocar_con (nave)
    asteroide = Asteroide.new
    expect{asteroide.chocar_con(misil)}.to raise_exception(ExcepcionObjetoEspacialChocadoDestruido)
  end
end

describe 'Ejemplo1 Nave choca con Asteroide' do

  it 'verifica vida Nave' do
    nave = Nave.new
    asteroide = Asteroide.new
    asteroide.vida = 50
    nave.chocar_con(asteroide)
    vida_nave = 100
    expect(nave.vida).to eq vida_nave
  end

  it 'verifica masa Nave' do
    nave = Nave.new
    asteroide = Asteroide.new
    asteroide.vida = 50
    nave.chocar_con(asteroide)
    masa_nave = 50
    expect(nave.masa).to eq masa_nave
  end

  it 'verifica vida Asteroide' do
    nave = Nave.new
    asteroide = Asteroide.new
    asteroide.vida = 50
    nave.chocar_con(asteroide)
    vida_asteroide = 50
    expect(asteroide.vida).to eq vida_asteroide
  end

  it 'verifica masa Asteroide' do
    nave = Nave.new
    asteroide = Asteroide.new
    asteroide.vida = 50
    nave.chocar_con(asteroide)
    masa_asteroide = 110
    expect(asteroide.masa).to eq masa_asteroide
  end
end

describe 'Ejemplo2 Estrella choca con Misil' do
  it 'verifica vida Estrella' do
    estrella = Estrella.new
    misil = Misil.new
    estrella.vida = 50
    estrella.masa = 10
    misil.vida = 10
    misil.masa = 30
    vida_estrella = 50
    expect(estrella.vida).to eq vida_estrella
  end

  it 'verifica masa Estrella' do
    estrella = Estrella.new
    misil = Misil.new
    estrella.vida = 50
    estrella.masa = 10
    misil.vida = 10
    misil.masa = 30
    masa_estrella = 10
    expect(estrella.masa).to eq masa_estrella
  end

  it 'verifica vida Misil' do
    estrella = Estrella.new
    misil = Misil.new
    estrella.vida = 50
    estrella.masa = 10
    misil.vida = 10
    misil.masa = 30
    vida_misil = 10
    expect(misil.vida).to eq vida_misil
  end

  it 'verifica masa Misil' do
    estrella = Estrella.new
    misil = Misil.new
    estrella.vida = 50
    estrella.masa = 10
    misil.vida = 10
    misil.masa = 30
    masa_misil = 30
    expect(misil.masa).to eq masa_misil
  end
end

describe 'Ejemplo3 Bomba choca con otraBomba' do
  it 'verifica vida Bomba' do
    bomba = Bomba.new
    otra_bomba = Bomba.new
    bomba.vida = 200
    bomba.masa = 90
    otra_bomba.vida = 20
    otra_bomba.masa = 45
    bomba.chocar_con (otra_bomba)
    vida_bomba = 100
    expect(bomba.vida).to eq vida_bomba
  end

  it 'verifica masa Bomba' do
    bomba = Bomba.new
    otra_bomba = Bomba.new
    bomba.vida = 200
    bomba.masa = 90
    otra_bomba.vida = 20
    otra_bomba.masa = 45
    bomba.chocar_con (otra_bomba)
    masa_bomba = 90
    expect(bomba.masa).to eq masa_bomba
  end

  it 'verifica vida otraBomba' do
    bomba = Bomba.new
    otra_bomba = Bomba.new
    bomba.vida = 200
    bomba.masa = 90
    otra_bomba.vida = 20
    otra_bomba.masa = 45
    bomba.chocar_con (otra_bomba)
    vida_otra_bomba = 0
    expect(otra_bomba.vida).to eq vida_otra_bomba
  end

  it 'verifica masa otraBomba' do
    bomba = Bomba.new
    otra_bomba = Bomba.new
    bomba.vida = 200
    bomba.masa = 90
    otra_bomba.vida = 20
    otra_bomba.masa = 45
    bomba.chocar_con (otra_bomba)
    masa_otra_bomba = 45
    expect(otra_bomba.masa).to eq masa_otra_bomba
  end
end

describe 'Ejemplo 4 Bomba choca con Asteroide' do

  it 'verifica vida Bomba' do
    bomba = Bomba.new
    asteroide = Asteroide.new
    bomba.vida = 200
    asteroide.vida = 30
    bomba.chocar_con (asteroide)
    vida_bomba = 0
    expect(bomba.vida).to eq vida_bomba
  end

  it 'verifica masa Bomba' do
    bomba = Bomba.new
    asteroide = Asteroide.new
    bomba.vida = 200
    asteroide.vida = 30
    bomba.chocar_con (asteroide)
    masa_bomba = 100
    expect(bomba.masa).to eq masa_bomba
  end

  it 'verifica vida Asteroide' do
    bomba = Bomba.new
    asteroide = Asteroide.new
    bomba.vida = 200
    asteroide.vida = 30
    bomba.chocar_con (asteroide)
    vida_asteroide = 30
    expect(asteroide.vida).to eq vida_asteroide
  end

  it 'verifica masa Asteroide' do
    bomba = Bomba.new
    asteroide = Asteroide.new
    bomba.vida = 200
    asteroide.vida = 30
    bomba.chocar_con (asteroide)
    masa_asteroide = 100
    expect(asteroide.masa).to eq masa_asteroide
  end
end

describe 'Ejemplo5 Nave choca con Estrella' do

  it 'verifica vida Nave' do
    nave = Nave.new
    estrella = Estrella.new
    estrella.vida = 50
    estrella.masa = 50
    nave.chocar_con(estrella)
    vida_nave = 150
    expect(nave.vida).to eq vida_nave
  end

  it 'verifica masa Nave' do
    nave = Nave.new
    estrella = Estrella.new
    estrella.vida = 50
    estrella.masa = 50
    nave.chocar_con(estrella)
    masa_nave = 100
    expect(nave.masa).to eq masa_nave
  end

  it 'verifica vida Estrella' do
    nave = Nave.new
    estrella = Estrella.new
    estrella.vida = 50
    estrella.masa = 50
    nave.chocar_con(estrella)
    vida_estrella = 0
    expect(estrella.vida).to eq vida_estrella
  end

  it 'verifica masa Estrella' do
    nave = Nave.new
    estrella = Estrella.new
    estrella.vida = 50
    estrella.masa = 50
    nave.chocar_con(estrella)
    masa_estrella = 50
    expect(estrella.masa).to eq masa_estrella
  end
end
