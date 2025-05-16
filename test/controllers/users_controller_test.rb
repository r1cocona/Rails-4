require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # setup do
  #   @user = users(:sato)
  # end
  test "#index ユーザー一覧ページのアクセスに成功すること" do
    get users_path
    assert_response :success
  end
  test "#new 新規作成ページのアクセスに成功すること" do
    get new_user_path
    assert_response :success
  end
  test "#create ユーザーを作成すると一人増える" do
    assert_difference('User.count') do
      post users_path, params: { user: {name: "taro"}}
    end
    assert_redirected_to user_path(User.last)
  end
  test "#show ユーザー詳細画面のアクセスに成功すること" do
    @user = users(:sato)
    get user_path(@user)
    assert_response :success
  end
  test "#edit 情報修正ページのアクセスに成功すること" do
    @user = users(:sato)
    get edit_user_path(@user)
    assert_response :success
  end
  test "#update ユーザー情報が修正できる" do
    @user = users(:sato)
    patch user_path(@user), params: { user: { name: "iii"}}
    assert_redirected_to user_path(@user)
  end
  test "#destroy ユーザー情報が削除できる" do
    @user = users(:sato)
    assert_difference('User.count', -1) do
      delete user_path(@user)
    end

    assert_redirected_to root_path
  end
end
