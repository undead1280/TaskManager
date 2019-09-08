require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "testing form to create new project" do
    get "/projects/new"
    assert_response :success
  end

  test "testing form to edit project" do
    get "/projects"
    assert_response :success
  end
end
