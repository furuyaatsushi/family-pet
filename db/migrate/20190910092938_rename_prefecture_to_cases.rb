class RenamePrefectureToCases < ActiveRecord::Migration[5.0]
  def change
    rename_column :cases, :Prefecture, :prefecture
  end
end
