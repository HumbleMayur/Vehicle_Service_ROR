class Customer < ApplicationRecord
  has_many :service_histories
  has_many :products ,through: :service_histories

end
