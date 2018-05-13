json.extract! wine, :id, :name, :starts, :country, :color, :grapes, :year_made, :region, :url, :string, :images, :created_at, :updated_at
json.url wine_url(wine, format: :json)
