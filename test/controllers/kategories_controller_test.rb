require 'test_helper'

class KategoriesControllerTest < ActionController::TestCase
  setup do
    @kategory = kategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kategory" do
    assert_difference('Kategorie.count') do
      post :create, kategory: { name: @kategory.name }
    end

    assert_redirected_to kategory_path(assigns(:kategory))
  end

  test "should show kategory" do
    get :show, id: @kategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kategory
    assert_response :success
  end

  test "should update kategory" do
    patch :update, id: @kategory, kategory: { name: @kategory.name }
    assert_redirected_to kategory_path(assigns(:kategory))
  end

  test "should destroy kategory" do
    assert_difference('Kategorie.count', -1) do
      delete :destroy, id: @kategory
    end

    assert_redirected_to kategories_path
  end
end
