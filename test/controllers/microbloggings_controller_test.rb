require 'test_helper'

class MicrobloggingsControllerTest < ActionController::TestCase
  setup do
    @microblogging = microbloggings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microbloggings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microblogging" do
    assert_difference('Microblogging.count') do
      post :create, microblogging: { contents: @microblogging.contents, email: @microblogging.email, name: @microblogging.name }
    end

    assert_redirected_to microblogging_path(assigns(:microblogging))
  end

  test "should show microblogging" do
    get :show, id: @microblogging
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microblogging
    assert_response :success
  end

  test "should update microblogging" do
    patch :update, id: @microblogging, microblogging: { contents: @microblogging.contents, email: @microblogging.email, name: @microblogging.name }
    assert_redirected_to microblogging_path(assigns(:microblogging))
  end

  test "should destroy microblogging" do
    assert_difference('Microblogging.count', -1) do
      delete :destroy, id: @microblogging
    end

    assert_redirected_to microbloggings_path
  end
end
