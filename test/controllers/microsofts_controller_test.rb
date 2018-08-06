require 'test_helper'

class MicrosoftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microsoft = microsofts(:one)
  end

  test "should get index" do
    get microsofts_url
    assert_response :success
  end

  test "should get new" do
    get new_microsoft_url
    assert_response :success
  end

  test "should create microsoft" do
    assert_difference('Microsoft.count') do
      post microsofts_url, params: { microsoft: { content: @microsoft.content, user_id: @microsoft.user_id } }
    end

    assert_redirected_to microsoft_url(Microsoft.last)
  end

  test "should show microsoft" do
    get microsoft_url(@microsoft)
    assert_response :success
  end

  test "should get edit" do
    get edit_microsoft_url(@microsoft)
    assert_response :success
  end

  test "should update microsoft" do
    patch microsoft_url(@microsoft), params: { microsoft: { content: @microsoft.content, user_id: @microsoft.user_id } }
    assert_redirected_to microsoft_url(@microsoft)
  end

  test "should destroy microsoft" do
    assert_difference('Microsoft.count', -1) do
      delete microsoft_url(@microsoft)
    end

    assert_redirected_to microsofts_url
  end
end
