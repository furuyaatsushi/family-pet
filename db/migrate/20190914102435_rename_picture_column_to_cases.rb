class RenamePictureColumnToCases < ActiveRecord::Migration[5.0]
  def change
    rename_column :cases, :picture, :image
  end
end
