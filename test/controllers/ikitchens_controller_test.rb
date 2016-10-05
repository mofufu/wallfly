require 'test_helper'

class IkitchensControllerTest < ActionController::TestCase
  setup do
    @ikitchen = ikitchens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ikitchens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ikitchen" do
    assert_difference('Ikitchen.count') do
      post :create, ikitchen: { cabinet: @ikitchen.cabinet, floor: @ikitchen.floor, house_id: @ikitchen.house_id, sink: @ikitchen.sink, stove: @ikitchen.stove }
    end

    assert_redirected_to ikitchen_path(assigns(:ikitchen))
  end

  test "should show ikitchen" do
    get :show, id: @ikitchen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ikitchen
    assert_response :success
  end

  test "should update ikitchen" do
    patch :update, id: @ikitchen, ikitchen: { cabinet: @ikitchen.cabinet, floor: @ikitchen.floor, house_id: @ikitchen.house_id, sink: @ikitchen.sink, stove: @ikitchen.stove }
    assert_redirected_to ikitchen_path(assigns(:ikitchen))
  end

  test "should destroy ikitchen" do
    assert_difference('Ikitchen.count', -1) do
      delete :destroy, id: @ikitchen
    end

    assert_redirected_to ikitchens_path
  end
end
