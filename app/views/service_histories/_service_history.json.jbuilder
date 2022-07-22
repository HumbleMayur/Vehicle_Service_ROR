json.extract! service_history, :id, :customer_id, :product_id, :startdate, :enddate, :status, :amount_paid, :amount_due, :created_at, :updated_at
json.url service_history_url(service_history, format: :json)
