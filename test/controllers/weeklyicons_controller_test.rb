require 'test_helper'

class WeeklyiconsControllerTest < ActionController::TestCase
  setup do
    @weeklyicon = weeklyicons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weeklyicons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weeklyicon" do
    assert_difference('Weeklyicon.count') do
      post :create, weeklyicon: { user_id: @weeklyicon.user_id, weekly_expenses: @weeklyicon.weekly_expenses }
    end

    assert_redirected_to weeklyicon_path(assigns(:weeklyicon))
  end

  test "should show weeklyicon" do
    get :show, id: @weeklyicon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weeklyicon
    assert_response :success
  end

  test "should update weeklyicon" do
    patch :update, id: @weeklyicon, weeklyicon: { user_id: @weeklyicon.user_id, weekly_expenses: @weeklyicon.weekly_expenses }
    assert_redirected_to weeklyicon_path(assigns(:weeklyicon))
  end

  test "should destroy weeklyicon" do
    assert_difference('Weeklyicon.count', -1) do
      delete :destroy, id: @weeklyicon
    end

    assert_redirected_to weeklyicons_path
  end
end
