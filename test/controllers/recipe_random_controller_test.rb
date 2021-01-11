require "test_helper"

class RecipeRandomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipe_random_index_url
    assert_response :success
  end
end
