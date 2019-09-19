class RemovePrefectureFromCase < ActiveRecord::Migration[5.0]
  def change
    remove_column :cases, :prefecture, :string
  end
end
