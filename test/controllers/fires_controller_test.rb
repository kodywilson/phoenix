require 'test_helper'

class FiresControllerTest < ActionController::TestCase
  setup do
    @fire = fires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fire" do
    assert_difference('Fire.count') do
      post :create, fire: { description: @fire.description, incident: @fire.incident, name: @fire.name, owner: @fire.owner, root_cause_analysis: @fire.root_cause_analysis, status: @fire.status }
    end

    assert_redirected_to fire_path(assigns(:fire))
  end

  test "should show fire" do
    get :show, id: @fire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fire
    assert_response :success
  end

  test "should update fire" do
    patch :update, id: @fire, fire: { description: @fire.description, incident: @fire.incident, name: @fire.name, owner: @fire.owner, root_cause_analysis: @fire.root_cause_analysis, status: @fire.status }
    assert_redirected_to fire_path(assigns(:fire))
  end

  test "should destroy fire" do
    assert_difference('Fire.count', -1) do
      delete :destroy, id: @fire
    end

    assert_redirected_to fires_path
  end
end
