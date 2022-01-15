require "application_system_test_case"

class SocialPlatformsTest < ApplicationSystemTestCase
  setup do
    @social_platform = social_platforms(:one)
  end

  test "visiting the index" do
    visit social_platforms_url
    assert_selector "h1", text: "Social platforms"
  end

  test "should create social platform" do
    visit social_platforms_url
    click_on "New social platform"

    fill_in "Company", with: @social_platform.company_id
    fill_in "Name", with: @social_platform.name
    fill_in "Url", with: @social_platform.url
    click_on "Create Social platform"

    assert_text "Social platform was successfully created"
    click_on "Back"
  end

  test "should update Social platform" do
    visit social_platform_url(@social_platform)
    click_on "Edit this social platform", match: :first

    fill_in "Company", with: @social_platform.company_id
    fill_in "Name", with: @social_platform.name
    fill_in "Url", with: @social_platform.url
    click_on "Update Social platform"

    assert_text "Social platform was successfully updated"
    click_on "Back"
  end

  test "should destroy Social platform" do
    visit social_platform_url(@social_platform)
    click_on "Destroy this social platform", match: :first

    assert_text "Social platform was successfully destroyed"
  end
end
