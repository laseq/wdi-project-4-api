require 'test_helper'

class GroupInvitesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get group_invites_create_url
    assert_response :success
  end

  test "should get accept" do
    get group_invites_accept_url
    assert_response :success
  end

  test "should get decline" do
    get group_invites_decline_url
    assert_response :success
  end

end
