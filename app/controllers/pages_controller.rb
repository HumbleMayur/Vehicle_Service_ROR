class PagesController < ApplicationController
  def home
    @users=current_user
    @service_histories=ServiceHistory.all
     @products=Product.all
     @customers=Customer.all
   
     
  end
  def show
    
  end

  def new
    @customer = Customer.new
  end
  
  
end
