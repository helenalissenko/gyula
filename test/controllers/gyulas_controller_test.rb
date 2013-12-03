require 'test_helper'

class GyulasControllerTest < ActionController::TestCase
  setup do
    @gyula = gyulas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gyulas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gyula" do
    assert_difference('Gyula.count') do
      post :create, gyula: {  }
    end

    assert_redirected_to gyula_path(assigns(:gyula))
  end

  test "should show gyula" do
    get :show, id: @gyula
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gyula
    assert_response :success
  end

  test "should update gyula" do
    patch :update, id: @gyula, gyula: {  }
    assert_redirected_to gyula_path(assigns(:gyula))
  end

  test "should destroy gyula" do
    assert_difference('Gyula.count', -1) do
      delete :destroy, id: @gyula
    end

    assert_redirected_to gyulas_path
  end
end
