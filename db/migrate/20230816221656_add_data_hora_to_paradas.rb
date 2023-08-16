class AddDataHoraToParadas < ActiveRecord::Migration[7.0]
  def change
    add_column :paradas, :data_hora, :datetime
  end
end
