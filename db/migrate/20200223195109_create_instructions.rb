class CreateInstructions < ActiveRecord::Migration[5.2]
  def change
    create_table :instructions do |t|
      t.text :etape
      t.belongs_to :recette, foreign_key: true

      t.timestamps
    end
  end
end
