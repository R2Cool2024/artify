require "test_helper"

class Owner::ArtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_arts_index_url
    assert_response :success
  end
end
