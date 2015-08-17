require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get whataboutit" do
    get :whataboutit
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

end
