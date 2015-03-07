require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end
  
  test "deberia ser redirigido a la pagina de login si no esta autenticado" do
    
    get :new
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end
  
  test "should get new" do
    sign_in users(:one)
    get :new
    assert_response :success
  end

  test "should create product" do
    sign_in users(:one)
    assert_difference('Product.count') do
      post :create, product: { description: @product.description, expdate: @product.expdate, name: @product.name, user_id: @product.user_id }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    sign_in users(:one)
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    sign_in users(:one)
    patch :update, id: @product, product: { description: @product.description, expdate: @product.expdate, name: @product.name, user_id: @product.user_id }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    sign_in users(:one)
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
