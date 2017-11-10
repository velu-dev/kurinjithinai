require 'test_helper'

class BackendUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backend_user = backend_users(:one)
  end

  test "should get index" do
    get backend_users_url
    assert_response :success
  end

  test "should get new" do
    get new_backend_user_url
    assert_response :success
  end

  test "should create backend_user" do
    assert_difference('BackendUser.count') do
      post backend_users_url, params: { backend_user: { email_id: @backend_user.email_id, mobile_number: @backend_user.mobile_number, password: @backend_user.password, role_id: @backend_user.role_id, user_name: @backend_user.user_name } }
    end

    assert_redirected_to backend_user_url(BackendUser.last)
  end

  test "should show backend_user" do
    get backend_user_url(@backend_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_backend_user_url(@backend_user)
    assert_response :success
  end

  test "should update backend_user" do
    patch backend_user_url(@backend_user), params: { backend_user: { email_id: @backend_user.email_id, mobile_number: @backend_user.mobile_number, password: @backend_user.password, role_id: @backend_user.role_id, user_name: @backend_user.user_name } }
    assert_redirected_to backend_user_url(@backend_user)
  end

  test "should destroy backend_user" do
    assert_difference('BackendUser.count', -1) do
      delete backend_user_url(@backend_user)
    end

    assert_redirected_to backend_users_url
  end
end
