require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
  end
  test "should get index" do
    get movies_url
    assert_response :success
  end
end
end
