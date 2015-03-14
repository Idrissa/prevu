require 'test_helper'

class AssurancesControllerTest < ActionController::TestCase
  setup do
    @assurance = assurances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assurances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assurance" do
    assert_difference('Assurance.count') do
      post :create, assurance: { actif: @assurance.actif, adresse: @assurance.adresse, couleur: @assurance.couleur, date_adhesion: @assurance.date_adhesion, nom: @assurance.nom, numero_agrement: @assurance.numero_agrement }
    end

    assert_redirected_to assurance_path(assigns(:assurance))
  end

  test "should show assurance" do
    get :show, id: @assurance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assurance
    assert_response :success
  end

  test "should update assurance" do
    patch :update, id: @assurance, assurance: { actif: @assurance.actif, adresse: @assurance.adresse, couleur: @assurance.couleur, date_adhesion: @assurance.date_adhesion, nom: @assurance.nom, numero_agrement: @assurance.numero_agrement }
    assert_redirected_to assurance_path(assigns(:assurance))
  end

  test "should destroy assurance" do
    assert_difference('Assurance.count', -1) do
      delete :destroy, id: @assurance
    end

    assert_redirected_to assurances_path
  end
end
