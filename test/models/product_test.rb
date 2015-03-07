require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "que el producto no se guarde vacio" do
     product = Product.new
     assert !product.save
   end
   
   test "que el producto no se guarde sin usuario" do
     product = Product.new
     product.name = 'producto1'
     product.description = 'descripcion1'
     product.expdate = 2015-03-07
     assert_not product.save
   end
   
   test "que el producto no se guarde sin nombre" do
     product = Product.new
     product.description = 'descripcion1'
     product.expdate = 2015-03-07
     product.user_id = products(:one).user_id
     assert_not product.save
   end
   
   test "que el producto no se guarde sin descripcion" do
     product = Product.new
     product.name = 'producto1'
     product.expdate = 2015-03-07
     product.user_id = products(:one).user_id
     assert_not product.save
   end
   
   test "que el producto no se guarde sin fecha de expiracion" do
     product = Product.new
     product.name = 'producto1'
     product.description = 'descripcion1'
     product.user_id = products(:one).user_id
     assert_not product.save
   end
end
