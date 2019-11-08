json.extract! inventory, :id, :item_id, :name, :item_status, :quantity, :markup, :amount_sold, :current_order_amount, :category, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
