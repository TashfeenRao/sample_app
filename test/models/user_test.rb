require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name:"tashfeen",email:"tashfeen@gamil.com",password:"tashfeen",password_confirmation:"tashfeen")
  end

  test "should valid" do
    assert @user.valid?
  end

  test "should have a name" do 
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "should have a email" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "should have valid email format" do 
    invalid_addresses = %w[example@,com exmple.hello@com example@.org at_helo_.@.com at_@_helo@.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password should be present" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have length at least 6" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end
