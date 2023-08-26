require 'rails_helper'

RSpec.describe Carona, "Validação das entradas das Caronas", type: :model do
  it 'Todas as entradas são válidas' do
    carona = FactoryBot.build(:carona)
    expect(carona).to be_valid
  end
end
