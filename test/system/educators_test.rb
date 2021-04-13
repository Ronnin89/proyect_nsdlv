require "application_system_test_case"

class EducatorsTest < ApplicationSystemTestCase
  setup do
    @educator = educators(:one)
  end

  test "visiting the index" do
    visit educators_url
    assert_selector "h1", text: "Educators"
  end

  test "creating a Educator" do
    visit educators_url
    click_on "New Educator"

    fill_in "Profile", with: @educator.profile_id
    fill_in "Type educator", with: @educator.type_educator
    click_on "Create Educator"

    assert_text "Educator was successfully created"
    click_on "Back"
  end

  test "updating a Educator" do
    visit educators_url
    click_on "Edit", match: :first

    fill_in "Profile", with: @educator.profile_id
    fill_in "Type educator", with: @educator.type_educator
    click_on "Update Educator"

    assert_text "Educator was successfully updated"
    click_on "Back"
  end

  test "destroying a Educator" do
    visit educators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Educator was successfully destroyed"
  end
end
