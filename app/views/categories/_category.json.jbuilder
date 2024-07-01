json.extract! category, :id, :name, :description, :image, :created_at, :updated_at
json.url category_url(category, format: :json)
json.description category.description.to_s
json.image url_for(category.image)
