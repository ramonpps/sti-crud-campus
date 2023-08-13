class CreateCampis < ActiveRecord::Migration[7.0]
  def change
    create_table :campis do |t|
      t.string :Name
      t.string :Address
      t.integer :Number
      t.string :Neighborhood
      t.string :City
      t.string :Postal_code
      t.date :Deactivation

      t.timestamps
    end
  end
end
