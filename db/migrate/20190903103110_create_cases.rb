class CreateCases < ActiveRecord::Migration[5.0]
  def change
    create_table :cases do |t|
      t.string     :animal, null: false
      t.string     :kind
      t.string     :sex
      t.string     :age
      t.text       :comment
      t.text       :other
      t.text       :picture

      t.timestamps
    end
  end
end
