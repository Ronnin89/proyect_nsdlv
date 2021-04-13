require 'test_helper'

class EducatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @educator = educators(:one)
  end

  test "should get index" do
    get educators_url
    assert_response :success
  end

  test "should get new" do
    get new_educator_url
    assert_response :success
  end

  test "should create educator" do
    assert_difference('Educator.count') do
      post educators_url, params: { educator: { profile_id: @educator.profile_id, type_educator: @educator.type_educator } }
    end

    assert_redirected_to educator_url(Educator.last)
  end

  test "should show educator" do
    get educator_url(@educator)
    assert_response :success
  end

  test "should get edit" do
    get edit_educator_url(@educator)
    assert_response :success
  end

  test "should update educator" do
    patch educator_url(@educator), params: { educator: { profile_id: @educator.profile_id, type_educator: @educator.type_educator } }
    assert_redirected_to educator_url(@educator)
  end

  test "should destroy educator" do
    assert_difference('Educator.count', -1) do
      delete educator_url(@educator)
    end

    assert_redirected_to educators_url
  end
end
