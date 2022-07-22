class ServiceHistory < ApplicationRecord
  belongs_to :customer
  belongs_to :product
end
