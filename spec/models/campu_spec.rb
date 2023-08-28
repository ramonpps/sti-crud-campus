require 'rails_helper'

RSpec.describe Campu, "Validação das entradas dos Campus", type: :model do
  it 'Nome do campus' do
    campu = FactoryBot.build(:campu_nome)
    expect(campu.Descrição).to eq('Nome do Campus')
  end
  it 'Endereço do campus' do
    campu = FactoryBot.build(:campu_endereco)
    expect(campu.Endereço).to eq('Endereço do Campus')
  end
  it 'Numero do campus' do
    campu = FactoryBot.build(:campu_numero)
    expect(campu.Número).to eq(123)
  end
  it 'Bairro do Campus' do
    campu = FactoryBot.build(:campu_bairro)
    expect(campu.Bairro).to eq('Bairro do Campus')
  end
  it 'Cidade do Campus' do
    campu = FactoryBot.build(:campu_cidade)
    expect(campu.Cidade).to eq('Cidade do Campus')
  end
  it 'CEP do Campus' do
    campu = FactoryBot.build(:campu_cep)
    expect(campu.CEP).to eq('12345-678')
  end
  it 'Campus ativo' do
    campu = FactoryBot.build(:campu_desativacao_ativo)
    expect(campu.Desativação).to eq(nil)
  end
  it 'Campus Inativo' do
    campu = FactoryBot.build(:campu_desativacao_inativo)
    expect(campu.Desativação).to eq(Date.today)
  end
end
