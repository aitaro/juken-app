require 'test_helper'

class UserUpdateInformationTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "update valid information" do
    log_in_as @user
    get update_information_path(@user)
    assert_template 'users/update_information'
  end
end
