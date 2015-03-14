require 'test_helper'

class MicroAssurancesControllerTest < ActionController::TestCase
  setup do
    @micro_assurance = micro_assurances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micro_assurances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micro_assurance" do
    assert_difference('MicroAssurance.count') do
      post :create, micro_assurance: {  }
    end

    assert_redirected_to micro_assurance_path(assigns(:micro_assurance))
  end

  test "should show micro_assurance" do
    get :show, id: @micro_assurance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micro_assurance
    assert_response :success
  end

  test "should update micro_assurance" do
    patch :update, id: @micro_assurance, micro_assurance: {  }
    assert_redirected_to micro_assurance_path(assigns(:micro_assurance))
  end

  test "should destroy micro_assurance" do
    assert_difference('MicroAssurance.count', -1) do
      delete :destroy, id: @micro_assurance
    end

    assert_redirected_to micro_assurances_path
  end
end
