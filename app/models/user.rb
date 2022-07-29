class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  
  enum status: [:customer, :employee] 
  # attr_accessor :usertype, :status
  has_many :customers
  def username
    return self.email.split('@')[0].capitalize
  end


end



