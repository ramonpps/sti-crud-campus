class Carona < ApplicationRecord
    has_many :paradas, dependent: :destroy
    attr_accessor :local_partida_input_type
    attr_accessor :destino_input_type
    validates :nome, presence: true
    validates :dia, presence: true
    validates :hora, presence: true
    validates :quantidade_passageiros, presence: true, numericality: { only_integer: true }
    validates :valor_custo, presence: true, numericality: { only_integer: true }
  end
