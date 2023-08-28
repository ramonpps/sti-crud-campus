require 'rails_helper'

RSpec.describe Parada, "Validação das entradas das Paradas", type: :model do
  it 'Local da Parada' do
    parada = FactoryBot.build(:parada_local)
    expect(parada.local).to eq('Local de Parada')
  end
  it 'Data e Hora da Parada' do
    parada = FactoryBot.build(:parada_data)
    expect(parada.data_hora).not_to be_nil
  end
end
