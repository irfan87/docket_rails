require 'test_helper'

class DocketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dockets_index_url
    assert_response :success
  end

end
