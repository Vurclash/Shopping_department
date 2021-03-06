require 'test_helper'

class InventoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inventory_index_url
    assert_response :success
  end

  test "should get show" do
    get inventory_show_url
    assert_response :success
  end

  test "should get new" do
    get inventory_new_url
    assert_response :success
  end

  test "should get edit" do
    get inventory_edit_url
    assert_response :success
  end

end
