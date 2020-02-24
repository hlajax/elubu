json.extract! recette, :id, :titre, :description, :utilisateur_id, :created_at, :updated_at
json.url recette_url(recette, format: :json)
