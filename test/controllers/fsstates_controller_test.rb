require 'test_helper'

class FsstatesControllerTest < ActionController::TestCase
  setup do
    @fsstate = fsstates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fsstates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fsstate" do
    assert_difference('Fsstate.count') do
      post :create, fsstate: { acronym: @fsstate.acronym, fscountries_id: @fsstate.fscountries_id, name: @fsstate.name }
    end

    assert_redirected_to fsstate_path(assigns(:fsstate))
  end

  test "should show fsstate" do
    get :show, id: @fsstate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fsstate
    assert_response :success
  end

  test "should update fsstate" do
    patch :update, id: @fsstate, fsstate: { acronym: @fsstate.acronym, fscountries_id: @fsstate.fscountries_id, name: @fsstate.name }
    assert_redirected_to fsstate_path(assigns(:fsstate))
  end

  test "should destroy fsstate" do
    assert_difference('Fsstate.count', -1) do
      delete :destroy, id: @fsstate
    end

    assert_redirected_to fsstates_path
  end
end
