class CreateBraves < ActiveRecord::Migration[5.2]
  def change
    create_table :braves do |t|
      t.string :name
      t.integer :level
      t.integer :hp
      t.integer :mp
      t.timestamps
    end
  end
end
