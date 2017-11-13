require 'test_helper'

class RequesterControllerTest < ActionDispatch::IntegrationTest
  test "should get html_parser" do
    get requester_html_parser_url
    assert_response :success
  end

end
