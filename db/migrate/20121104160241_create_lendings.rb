class CreateLendings < ActiveRecord::Migration
  def change
    create_table :lendings do |t|
      t.date :data_od
      t.references :thing
      t.references :user

      t.timestamps
    end
    add_index :lendings, :thing_id
    add_index :lendings, :user_id
  end
end
