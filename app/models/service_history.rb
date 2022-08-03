class ServiceHistory < ApplicationRecord
  

  # 

  belongs_to :customer
  belongs_to :product

  has_one_attached :before
  has_one_attached :after
  # belongs_to :cart
  

  

  # def amount_due
  # #  @service_history.amount_paid - service_history.product.price 
  # @service_histories.amount_paid - @service_histor.product.price 
  # end


  # <%= @service_history.product.price %>
  
end
