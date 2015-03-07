class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :products
    
  validates :name, presence: true
  validates :lastname, presence: true

  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence:true  
end
