require 'test_helper'

class FrontEndArticlesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
