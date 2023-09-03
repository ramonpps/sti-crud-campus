RSpec.configure do |config|
    config.include FactoryBot::Syntax::Methods
end
FactoryBot.define do
    factory :campu_nome, class: 'Campu' do
      Descrição { 'Nome do Campus' }
    end
  
    factory :campu_endereco, class: 'Campu' do
      Endereço { 'Endereço do Campus' }
    end
  
    factory :campu_numero, class: 'Campu' do
      Número { 123 }
    end
  
    factory :campu_bairro, class: 'Campu' do
      Bairro { 'Bairro do Campus' }
    end
  
    factory :campu_cidade, class: 'Campu' do
      Cidade { 'Cidade do Campus' }
    end
  
    factory :campu_cep, class: 'Campu' do
      CEP { '12345-678' }
    end
  
    factory :campu_desativacao_ativo, class: 'Campu' do
      Desativação { nil }
    end
  
    factory :campu_desativacao_inativo, class: 'Campu' do
      Desativação { Date.today }
    end

    factory :carona_nome, class: 'Carona' do
        nome { 'Nome do Condutor' }
    end

    factory :carona_partida, class: 'Carona' do
        local_partida { 'Local de partida' }
    end

    factory :carona_destino, class: 'Carona' do
        destino { 'Destino' }
    end

    factory :carona_dia, class: 'Carona' do
        dia { Date.today }
    end

    factory :carona_hora, class: 'Carona' do
        hora { Time.now }
    end
    
    factory :carona_passageiros, class: 'Carona' do
        quantidade_passageiros { 4 }
    end

    factory :carona_custo, class: 'Carona' do
        valor_custo { 50 }
    end

    factory :carona_obs, class: 'Carona' do
        observacao { 'Alguma observação' }
    end

    factory :carona do
      nome { 'Nome do Condutor' }
      local_partida { 'Local de partida' }
      destino { 'Destino' }
      dia { Date.today }
      hora { Time.now }
      quantidade_passageiros { 4 }
      valor_custo { 50 }
      observacao { 'Alguma observação' }
    end

    factory :parada do
        local { 'Local de Parada' }
        data_hora { Time.now }
        association :carona
    end

    factory :parada_local, class: 'Parada' do
        local { 'Local de Parada' }
    end

    factory :parada_data, class: 'Parada' do
        data_hora { Time.now }
    end
  end
  