require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "the User requires email and password" do
		user = User.new     
     	assert !user.save
   	end 

	test "the User have unique email" do
		user = User.new     
		user.email = users(:one).email
     	assert !user.save
   	end    	
	
	test "the User requires name and lastname" do
		user = User.new     		
		user.email = users(:one).email
		user.encrypted_password = users(:one).encrypted_password
		assert !user.save
	end  

	test "the User requires lastname" do
		user = User.new     
		user.name = users(:one).name
		user.email = users(:one).email
		user.encrypted_password = users(:one).encrypted_password
		assert !user.save
	end 
end
