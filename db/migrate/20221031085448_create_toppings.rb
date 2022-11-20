class CreateToppings < ActiveRecord::Migration[7.0]
  def change
    create_table :toppings do |t|
      t.string :name
      t.belongs_to :coffee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
