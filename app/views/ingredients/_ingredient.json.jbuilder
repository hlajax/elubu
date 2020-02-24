json.extract! ingredient, :id, :titre, :recette_id, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
