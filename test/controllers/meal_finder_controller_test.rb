require 'test_helper'

class MealFinderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meal_finder_index_url
    assert_response :success
  end

end
