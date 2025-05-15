require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end
  test "indexアクションへのアクセスが成功" do
    get users_url
    assert_response :success
  end
  test "newアクションへのアクセスが成功" do
    get new_user_url
    assert_response :success
  end
  test "ユーザーを作成すると一人増える" do
    assert_difference('User.count') do
      post users_url, params: { user: {name: "taro"}}
    end

    assert_redirected_to user_url(User.last)
  end
  test "ユーザー一覧をshowできる" do
    get user_url(@user)
    assert_response :success
  end
  test "editアクションにアクセスし、ステータスコード200なことを確かめる" do
    get edit_user_url(@user)
    assert_response :success
  end
  test "ユーザーをupdateできる" do
    patch user_url(@user), params: { user: { name: "iii"}}
    assert_redirected_to user_url(@user)
  end
  test "ユーザーをdestroyすると、一人減る" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to root_path
  end
end
