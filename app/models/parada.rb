class Parada < ApplicationRecord
  belongs_to :carona
  validates :data_hora, presence: true
end
