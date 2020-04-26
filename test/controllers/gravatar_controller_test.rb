require 'test_helper'

class GravatarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gravatar_index_url
    assert_response :success
  end

end
