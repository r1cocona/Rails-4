require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # setup do
  #   @user = users(:sato)
  # end
  test "有効である" do
    @user = users(:sato)
    unless @user.valid?
      puts @user.errors.full_messages
    end

    assert @user.valid?
  end
  # test "存在する名前である" do
  #   @user = users(:sato)
  #   @user.name = "   "
  #   assert_not_nil @user.valid?
  # end
  # test "存在するルビである" do
  #   @user = users(:sato)
  #   @user.ruby = "   "
  #   assert_not_nil @user.valid?
  # end
  # test "存在する性別である" do
  #   @user = users(:sato)
  #   @user.sex = "   "
  #   assert_not_nil @user.valid?
  # end
  # test "存在する固定電話の番号である" do
  #   @user = users(:sato)
  #   @user.tel = "   "
  #   assert_not_nil @user.valid?
  # end
  # test "存在する電話番号である" do
  #   @user = users(:sato)
  #   @user.mobile = "   "
  #   assert_not_nil @user.valid?
  # end
  # test "存在する郵便番号である" do
  #   @user = users(:sato)
  #   @user.zip = "   "
  #   assert_not_nil @user.valid?
  # end
  # test "存在する住所である" do
  #   @user = users(:sato)
  #   @user.address1 = "   "
  #   assert_not_nil @user.valid?
  # end
  # test "存在する生年月日である" do
  #   @user = users(:sato)
  #   @user.birthday = "   "
  #   assert_not_nil @user.valid?
  # end
end
