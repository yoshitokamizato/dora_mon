class CreateBosses < ActiveRecord::Migration[5.2]
  def change
    create_table :bosses do |t|
      t.string :name
      t.string :tribe
      t.timestamps
    end
  end
end
