class CreateCampus < ActiveRecord::Migration[7.0]
  def change
    create_table :campus do |t|
      t.string :Descrição
      t.string :Endereço
      t.integer :Número
      t.string :Bairro
      t.string :Cidade
      t.string :CEP
      t.date :Desativação

      t.timestamps
    end
  end
end
