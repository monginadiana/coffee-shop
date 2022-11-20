class CreateCoffees < ActiveRecord::Migration[7.0]
  def change
    create_table :coffees do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :image
      t.string :coffee_type
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
