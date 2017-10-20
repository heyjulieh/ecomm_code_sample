json.extract! item, :id, :brand, :release_year, :colorway, :description, :price, :img_url, :created_at, :updated_at
json.url item_url(item, format: :json)
