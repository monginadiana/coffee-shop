class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.string :title
      t.string :description
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :coffee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
