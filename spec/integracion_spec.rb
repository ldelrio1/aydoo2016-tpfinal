require 'rspec'
require_relative '../model/nave'

describe 'Integracion' do

  it 'Nave choca con Nave' do
    nave1 = Nave.new
    nave1.set_vida 200
    nave2 = Nave.new
    nave2.set_vida 200
    nave1.chocar_con(nave2)
    vida_nave1 = 100
    expect(nave1.vida).to eq vida_nave1
  end
end
