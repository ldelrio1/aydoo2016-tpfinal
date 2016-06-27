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

  it 'Nave1 choca con Nave2 verifica Nave1' do
    nave1 = Nave.new
    nave1.set_vida 200
    nave2 = Nave.new
    nave2.set_vida 200
    nave1.chocar_con(nave2)
    vida_nave1 = 100
    vida_nave2 = 0
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
