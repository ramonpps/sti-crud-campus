class Campu < ApplicationRecord
    validates :Descrição, presence: true
    validates :Endereço, presence: true
    validates :Número, presence: true, numericality: { only_integer: true }
    validates :Bairro, presence: true
    validates :Cidade, presence: true
    validates :CEP, presence: true
    validate :Desativação
end
