class CreateCaronas < ActiveRecord::Migration[7.0]
  def change
    create_table :caronas do |t|
      t.string :nome
      t.string :local_partida
      t.string :destino
      t.date :dia
      t.time :hora
      t.integer :quantidade_passageiros
      t.decimal :valor_custo
      t.text :observacao

      t.timestamps
    end
  end
end
