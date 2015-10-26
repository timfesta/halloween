class CreateRrecipes < ActiveRecord::Migration
  def change
    create_table :rrecipes do |t|
      t.string :name
      t.string :instructions
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
