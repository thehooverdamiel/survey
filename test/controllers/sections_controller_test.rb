require 'test_helper'

class SectionsControllerTest < ActionController::TestCase
  test "should get show_s1" do
    get :show_s1
    assert_response :success
  end

  test "should get update_s1" do
    get :update_s1
    assert_response :success
  end

  test "should get show_s2" do
    get :show_s2
    assert_response :success
  end

  test "should get update_s2" do
    get :update_s2
    assert_response :success
  end

end
