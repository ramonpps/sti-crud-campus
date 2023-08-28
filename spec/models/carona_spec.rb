require 'rails_helper'

RSpec.describe Carona, "Validação das entradas das Caronas", type: :model do
  it 'Nome do Condutor' do
    carona = FactoryBot.build(:carona_nome)
    expect(carona.nome).to eq('Nome do Condutor')
  end
  it 'Local de Partida' do
    carona = FactoryBot.build(:carona_partida)
    expect(carona.local_partida).to eq('Local de partida')
  end
  it 'Destino' do
    carona = FactoryBot.build(:carona_destino)
    expect(carona.destino).to eq('Destino')
  end
  it 'Dia' do
    carona = FactoryBot.build(:carona_dia)
    expect(carona.dia).to eq(Date.today )
  end
  it 'Hora' do
    carona = FactoryBot.build(:carona_hora)
    expect(carona.hora).not_to be_nil
  end
  it 'Passageiros' do
    carona = FactoryBot.build(:carona_passageiros)
    expect(carona.quantidade_passageiros).to eq(4)
  end
  it 'Custo' do
    carona = FactoryBot.build(:carona_custo)
    expect(carona.valor_custo).to eq(50)
  end
  it 'Observação' do
    carona = FactoryBot.build(:carona_obs)
    expect(carona.observacao).to eq('Alguma observação')
  end
end
