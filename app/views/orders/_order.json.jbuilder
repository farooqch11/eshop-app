json.extract! order, :id, :adress, :country, :city, :product_name, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)