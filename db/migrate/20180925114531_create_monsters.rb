class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string           :name
      t.string           :tribe
      t.integer          :level
      t.integer          :hp
      t.integer          :mp
      t.timestamps
    end
  end
end
