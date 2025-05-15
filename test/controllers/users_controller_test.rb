require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # setup do
  #   @user = users(:sato)
  # end
  test "indexアクションへのアクセスが200番で成功" do
    get users_path
    assert_response :success
  end
  test "newアクションへのアクセスが200番で成功" do
    get new_user_path
    assert_response :success
  end
  test "ユーザーを作成すると一人増える" do
    assert_difference('User.count') do
      post users_path, params: { user: {name: "taro"}}
    end
    assert_response :redirect
    assert_redirected_to user_path(User.last)
  end
  test "ユーザー一覧をshowできる" do
    @user = users(:sato)
    get user_path(@user)
    assert_response :success
  end
  test "editアクションにアクセスし、ステータスコード200なことを確かめる" do
    @user = users(:sato)
    get edit_user_path(@user)
    assert_response :success
  end
  test "ユーザーをupdateできる" do
    @user = users(:sato)
    patch user_path(@user), params: { user: { name: "iii"}}
    assert_redirected_to user_path(@user)
  end
  test "ユーザーをdestroyすると、一人減る" do
    @user = users(:sato)
    assert_difference('User.count', -1) do
      delete user_path(@user)
    end

    assert_response :see_other
    assert_redirected_to root_path
  end
end
