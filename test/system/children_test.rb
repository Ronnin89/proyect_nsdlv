require "application_system_test_case"

class ChildrenTest < ApplicationSystemTestCase
  setup do
    @child = children(:one)
  end

  test "visiting the index" do
    visit children_url
    assert_selector "h1", text: "Children"
  end

  test "creating a Child" do
    visit children_url
    click_on "New Child"

    fill_in "Egress", with: @child.egress
    fill_in "Entry", with: @child.entry
    fill_in "Grade", with: @child.grade
    fill_in "Id fundation", with: @child.id_fundation
    fill_in "Phone secure", with: @child.phone_secure
    fill_in "Profile", with: @child.profile_id
    click_on "Create Child"

    assert_text "Child was successfully created"
    click_on "Back"
  end

  test "updating a Child" do
    visit children_url
    click_on "Edit", match: :first

    fill_in "Egress", with: @child.egress
    fill_in "Entry", with: @child.entry
    fill_in "Grade", with: @child.grade
    fill_in "Id fundation", with: @child.id_fundation
    fill_in "Phone secure", with: @child.phone_secure
    fill_in "Profile", with: @child.profile_id
    click_on "Update Child"

    assert_text "Child was successfully updated"
    click_on "Back"
  end

  test "destroying a Child" do
    visit children_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Child was successfully destroyed"
  end
end
