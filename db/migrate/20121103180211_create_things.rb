class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.text :description
      t.references :user
      t.string :photo

      t.timestamps
    end
  end
end
