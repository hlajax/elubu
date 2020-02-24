class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :titre
      t.belongs_to :recette, foreign_key: true

      t.timestamps
    end
  end
end
