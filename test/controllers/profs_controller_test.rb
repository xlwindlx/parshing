require 'test_helper'

class ProfsControllerTest < ActionController::TestCase
  setup do
    @prof = profs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prof" do
    assert_difference('Prof.count') do
      post :create, prof: { classroom: @prof.classroom, day: @prof.day, div: @prof.div, grade: @prof.grade, grades: @prof.grades, proffesion: @prof.proffesion, subject: @prof.subject, time: @prof.time, title: @prof.title }
    end

    assert_redirected_to prof_path(assigns(:prof))
  end

  test "should show prof" do
    get :show, id: @prof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prof
    assert_response :success
  end

  test "should update prof" do
    patch :update, id: @prof, prof: { classroom: @prof.classroom, day: @prof.day, div: @prof.div, grade: @prof.grade, grades: @prof.grades, proffesion: @prof.proffesion, subject: @prof.subject, time: @prof.time, title: @prof.title }
    assert_redirected_to prof_path(assigns(:prof))
  end

  test "should destroy prof" do
    assert_difference('Prof.count', -1) do
      delete :destroy, id: @prof
    end

    assert_redirected_to profs_path
  end
end
