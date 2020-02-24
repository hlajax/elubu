class CreateRecettes < ActiveRecord::Migration[5.2]
  def change
    create_table :recettes do |t|
      t.string :titre
      t.text :description
      t.integer :utilisateur_id

      t.timestamps
    end
  end
end
