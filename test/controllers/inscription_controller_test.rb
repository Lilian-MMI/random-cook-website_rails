require "test_helper"

class InscriptionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inscription_index_url
    assert_response :success
  end
end
