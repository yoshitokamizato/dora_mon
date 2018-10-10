class AddColumnToMonsters < ActiveRecord::Migration[5.2]
  def change
    add_column :monsters, :level, :integer
    add_column :monsters, :hp, :integer
    add_column :monsters, :mp, :integer
  end
end
