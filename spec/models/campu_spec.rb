require 'rails_helper'

RSpec.describe Campu, "Validação das entradas dos Campus", type: :model do
  it 'Todas as entradas são validas' do
    campu = FactoryBot.build(:campu)
    expect(campu).to be_valid
  end
end
