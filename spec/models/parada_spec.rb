require 'rails_helper'

RSpec.describe Parada, "Validação das entradas das Paradas", type: :model do
  it 'Todas as entradas são válidas' do
    parada = FactoryBot.build(:parada)
    expect(parada).to be_valid
  end
end
