class ServiceHistory < ApplicationRecord
  belongs_to :customer
  belongs_to :product

  

  # def amount_due
  # #  @service_history.amount_paid - service_history.product.price 
  # @service_histories.amount_paid - @service_histor.product.price 
  # end


  # <%= @service_history.product.price %>
  
end
