class AddPrefectureIdToCase < ActiveRecord::Migration[5.0]
  def change
    add_reference :cases, :prefecture, foreign_key: true
  end
end
