require "test_helper"

class DocumentaryfilmControllerTest < ActionDispatch::IntegrationTest
  test "should get idex" do
    get documentaryfilm_idex_url
    assert_response :success
  end

  test "should get create" do
    get documentaryfilm_create_url
    assert_response :success
  end

  test "should get new" do
    get documentaryfilm_new_url
    assert_response :success
  end
end
