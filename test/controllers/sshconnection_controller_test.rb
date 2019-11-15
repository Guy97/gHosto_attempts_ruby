require 'test_helper'

class SshconnectionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sshconnection_index_url
    assert_response :success
  end

  test "should get connect" do
    get sshconnection_connect_url
    assert_response :success
  end

end
