class CreateRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.text :instructions, null: false
      t.boolean :is_public, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
