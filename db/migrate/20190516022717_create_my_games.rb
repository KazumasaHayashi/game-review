class CreateMyGames < ActiveRecord::Migration[5.2]
  def change
    create_table :my_games do |t|
      t.integer :year
      t.string :company
      t.string :name
      t.integer :price
      t.integer :evaluation
      t.string :comment
      t.boolean :already

      t.timestamps
    end
  end
end
