class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.string :commenter
      t.text :review
      t.integer :value
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
