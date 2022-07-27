class PagesController < ApplicationController
  def home
    @users=current_user
    @user = User.new
    @service_histories=ServiceHistory.all
     @products=Product.all
     @customers=Customer.all
    
     @posts=Post.new
    #  @posts = Post.all
   
     
  end
  def show
    
  end

  def new
    @customer = Customer.new
  end
  
  
end
