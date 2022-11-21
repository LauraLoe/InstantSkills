class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :level
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
