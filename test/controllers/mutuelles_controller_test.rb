require 'test_helper'

class MutuellesControllerTest < ActionController::TestCase
  setup do
    @mutuelle = mutuelles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mutuelles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mutuelle" do
    assert_difference('Mutuelle.count') do
      post :create, mutuelle: {  }
    end

    assert_redirected_to mutuelle_path(assigns(:mutuelle))
  end

  test "should show mutuelle" do
    get :show, id: @mutuelle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mutuelle
    assert_response :success
  end

  test "should update mutuelle" do
    patch :update, id: @mutuelle, mutuelle: {  }
    assert_redirected_to mutuelle_path(assigns(:mutuelle))
  end

  test "should destroy mutuelle" do
    assert_difference('Mutuelle.count', -1) do
      delete :destroy, id: @mutuelle
    end

    assert_redirected_to mutuelles_path
  end
end
