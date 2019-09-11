class AddPrefectureToCases < ActiveRecord::Migration[5.0]
  def change
    add_column :cases, :Prefecture, :string
  end
end
