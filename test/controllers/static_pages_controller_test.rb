require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @string = "Ruby on Rails Tutorial Sample APP"
  end

  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
    /#assert_select "title", "#{@string}" */
  end

  test "should get help" do
    get help_path
    assert_response :success
     /assert_select "title", "Help | #{@string}" /
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    / assert_select "title", "About | #{@string}" /
  end

  test "should get contact" do
    get contact_path
    assert_response :success
  end
end
