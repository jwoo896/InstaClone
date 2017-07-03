require 'test_helper'

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get line_through" do
    get notifications_line_through_url
    assert_response :success
  end

end
