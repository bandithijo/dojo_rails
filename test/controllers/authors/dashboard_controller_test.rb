require "test_helper"

class Authors::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get authors_dashboard_index_url
    assert_response :success
  end
end
