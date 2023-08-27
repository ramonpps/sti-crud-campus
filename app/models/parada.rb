class Parada < ApplicationRecord
  belongs_to :carona

  validates :local, presence: true
  validates :data_hora, presence: true
end
