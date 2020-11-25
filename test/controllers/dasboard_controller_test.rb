require 'test_helper'

class DasboardControllerTest < ActionDispatch::IntegrationTest
  test "should get wc_bookings" do
    get dasboard_wc_bookings_url
    assert_response :success
  end

  test "should get owner_bookings" do
    get dasboard_owner_bookings_url
    assert_response :success
  end

  test "should get show" do
    get dasboard_show_url
    assert_response :success
  end

  test "should get update" do
    get dasboard_update_url
    assert_response :success
  end

end
