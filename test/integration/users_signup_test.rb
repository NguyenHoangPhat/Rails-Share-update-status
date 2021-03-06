require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "",
                                         email: "user@invalid",
                                         password:              "123",
                                         password_confirmation: "456" } }
    end
    follow_redirect!
    assert_template 'users/new'
    assert is_logged_in?
  end
end
