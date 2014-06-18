require 'test_helper'

class FscountriesControllerTest < ActionController::TestCase
  setup do
    @fscountry = fscountries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fscountries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fscountry" do
    assert_difference('Fscountry.count') do
      post :create, fscountry: { currency: @fscountry.currency, ddi: @fscountry.ddi, name: @fscountry.name }
    end

    assert_redirected_to fscountry_path(assigns(:fscountry))
  end

  test "should show fscountry" do
    get :show, id: @fscountry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fscountry
    assert_response :success
  end

  test "should update fscountry" do
    patch :update, id: @fscountry, fscountry: { currency: @fscountry.currency, ddi: @fscountry.ddi, name: @fscountry.name }
    assert_redirected_to fscountry_path(assigns(:fscountry))
  end

  test "should destroy fscountry" do
    assert_difference('Fscountry.count', -1) do
      delete :destroy, id: @fscountry
    end

    assert_redirected_to fscountries_path
  end
end
