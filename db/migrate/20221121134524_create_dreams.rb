class CreateDreams < ActiveRecord::Migration[7.0]
  def change
    create_table :dreams do |t|
      t.string :name
      t.text :details
      t.integer :price
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
