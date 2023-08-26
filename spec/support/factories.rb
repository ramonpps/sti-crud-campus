FactoryBot.define do
    factory :campu do
        Descrição { 'Nome do Campus' }
        Endereço { 'Endereço do Campus' }
        Número { 123 }
        Bairro { 'Bairro do Campus' }
        Cidade { 'Cidade do Campus' }
        CEP { '12345-678' }
        Desativação { Date.today }
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
  end
  