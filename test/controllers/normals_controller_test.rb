require 'test_helper'

class NormalsControllerTest < ActionController::TestCase
  setup do
    @normal = normals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:normals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create normal" do
    assert_difference('Normal.count') do
      post :create, normal: { classroom: @normal.classroom, day: @normal.day, div: @normal.div, grades: @normal.grades, prof: @normal.prof, time: @normal.time, title: @normal.title }
    end

    assert_redirected_to normal_path(assigns(:normal))
  end

  test "should show normal" do
    get :show, id: @normal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @normal
    assert_response :success
  end

  test "should update normal" do
    patch :update, id: @normal, normal: { classroom: @normal.classroom, day: @normal.day, div: @normal.div, grades: @normal.grades, prof: @normal.prof, time: @normal.time, title: @normal.title }
    assert_redirected_to normal_path(assigns(:normal))
  end

  test "should destroy normal" do
    assert_difference('Normal.count', -1) do
      delete :destroy, id: @normal
    end

    assert_redirected_to normals_path
  end
end
