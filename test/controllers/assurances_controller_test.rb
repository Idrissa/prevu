require 'test_helper'

class AssurancesControllerTest < ActionController::TestCase
  setup do
    @structure_assurance = assurances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:structure_assurances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assurance" do
    assert_difference('Assurance.count') do
      post :create, structure_assurance: { actif: @structure_assurance.actif, adresse: @structure_assurance.adresse, couleur: @structure_assurance.couleur, date_adhesion: @structure_assurance.date_adhesion, nom: @structure_assurance.nom, numero_agrement: @structure_assurance.numero_agrement }
    end

    assert_redirected_to assurance_path(assigns(:structure_assurance))
  end

  test "should show assurance" do
    get :show, id: @structure_assurance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @structure_assurance
    assert_response :success
  end

  test "should update assurance" do
    patch :update, id: @structure_assurance, structure_assurance: { actif: @structure_assurance.actif, adresse: @structure_assurance.adresse, couleur: @structure_assurance.couleur, date_adhesion: @structure_assurance.date_adhesion, nom: @structure_assurance.nom, numero_agrement: @structure_assurance.numero_agrement }
    assert_redirected_to assurance_path(assigns(:structure_assurance))
  end

  test "should destroy assurance" do
    assert_difference('Assurance.count', -1) do
      delete :destroy, id: @structure_assurance
    end

    assert_redirected_to assurances_path
  end
end
