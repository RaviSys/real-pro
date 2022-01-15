require "test_helper"

class SocialPlatformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_platform = social_platforms(:one)
  end

  test "should get index" do
    get social_platforms_url
    assert_response :success
  end

  test "should get new" do
    get new_social_platform_url
    assert_response :success
  end

  test "should create social_platform" do
    assert_difference("SocialPlatform.count") do
      post social_platforms_url, params: { social_platform: { company_id: @social_platform.company_id, name: @social_platform.name, url: @social_platform.url } }
    end

    assert_redirected_to social_platform_url(SocialPlatform.last)
  end

  test "should show social_platform" do
    get social_platform_url(@social_platform)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_platform_url(@social_platform)
    assert_response :success
  end

  test "should update social_platform" do
    patch social_platform_url(@social_platform), params: { social_platform: { company_id: @social_platform.company_id, name: @social_platform.name, url: @social_platform.url } }
    assert_redirected_to social_platform_url(@social_platform)
  end

  test "should destroy social_platform" do
    assert_difference("SocialPlatform.count", -1) do
      delete social_platform_url(@social_platform)
    end

    assert_redirected_to social_platforms_url
  end
end
