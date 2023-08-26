class Carona < ApplicationRecord
    has_many :paradas, dependent: :destroy
    attr_accessor :local_partida_input_type
    attr_accessor :destino_input_type
  end
