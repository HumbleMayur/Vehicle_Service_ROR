class Product < ApplicationRecord
  has_many :orderables
  has_many :carts, through: :orderables

  has_many :service_histories
  has_many :products, through: :service_histories

  
end
