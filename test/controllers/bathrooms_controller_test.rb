require 'test_helper'

class BathroomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bathrooms_index_url
    assert_response :success
  end

  test "should get show" do
    get bathrooms_show_url
    assert_response :success
  end

  test "should get edit" do
    get bathrooms_edit_url
    assert_response :success
  end

  test "should get new" do
    get bathrooms_new_url
    assert_response :success
  end

end
