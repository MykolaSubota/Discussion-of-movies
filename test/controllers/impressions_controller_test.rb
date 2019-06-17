require 'test_helper'

class ImpressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
  end
  test "should get index" do
    get impressions_url
    assert_response :success
  end
end
