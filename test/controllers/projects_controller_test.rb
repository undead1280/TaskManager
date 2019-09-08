require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get "/projects/about"
    assert_response :success
  end
end
