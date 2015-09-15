require 'test_helper'

class MonthlyiconsControllerTest < ActionController::TestCase
  setup do
    @monthlyicon = monthlyicons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monthlyicons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monthlyicon" do
    assert_difference('Monthlyicon.count') do
      post :create, monthlyicon: { monthly_expenses: @monthlyicon.monthly_expenses, user_id: @monthlyicon.user_id }
    end

    assert_redirected_to monthlyicon_path(assigns(:monthlyicon))
  end

  test "should show monthlyicon" do
    get :show, id: @monthlyicon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monthlyicon
    assert_response :success
  end

  test "should update monthlyicon" do
    patch :update, id: @monthlyicon, monthlyicon: { monthly_expenses: @monthlyicon.monthly_expenses, user_id: @monthlyicon.user_id }
    assert_redirected_to monthlyicon_path(assigns(:monthlyicon))
  end

  test "should destroy monthlyicon" do
    assert_difference('Monthlyicon.count', -1) do
      delete :destroy, id: @monthlyicon
    end

    assert_redirected_to monthlyicons_path
  end
end
