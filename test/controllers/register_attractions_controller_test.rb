require 'test_helper'

class RegisterAttractionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get register_attractions_index_url
    assert_response :success
  end

  test "should get show" do
    get register_attractions_show_url
    assert_response :success
  end

  test "should get edit" do
    get register_attractions_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get register_attractions_destroy_url
    assert_response :success
  end

end
