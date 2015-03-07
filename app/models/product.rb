class Product < ActiveRecord::Base
    belongs_to :user
    validates :name, presence: true, length: {minimum: 6}
    validates :description, presence: true
    validates :expdate, presence: true
    validates :user, presence: true
end
