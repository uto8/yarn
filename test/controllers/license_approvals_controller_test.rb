require "test_helper"

class LicenseApprovalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get license_approvals_new_url
    assert_response :success
  end
end
