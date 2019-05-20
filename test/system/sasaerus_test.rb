require "application_system_test_case"

class SasaerusTest < ApplicationSystemTestCase
  setup do
    @sasaeru = sasaerus(:one)
  end

  test "visiting the index" do
    visit sasaerus_url
    assert_selector "h1", text: "Sasaerus"
  end

  test "creating a Sasaeru" do
    visit sasaerus_url
    click_on "New Sasaeru"

    fill_in "Author", with: @sasaeru.author
    fill_in "Base color", with: @sasaeru.base_color
    fill_in "Bottom text", with: @sasaeru.bottom_text
    fill_in "Lead", with: @sasaeru.lead
    fill_in "Sub lead 1", with: @sasaeru.sub_lead_1
    fill_in "Sub lead 2", with: @sasaeru.sub_lead_2
    fill_in "Sub lead 3", with: @sasaeru.sub_lead_3
    fill_in "Sub lead 4", with: @sasaeru.sub_lead_4
    fill_in "Sub title", with: @sasaeru.sub_title
    fill_in "Title", with: @sasaeru.title
    fill_in "Top text", with: @sasaeru.top_text
    click_on "Create Sasaeru"

    assert_text "Sasaeru was successfully created"
    click_on "Back"
  end

  test "updating a Sasaeru" do
    visit sasaerus_url
    click_on "Edit", match: :first

    fill_in "Author", with: @sasaeru.author
    fill_in "Base color", with: @sasaeru.base_color
    fill_in "Bottom text", with: @sasaeru.bottom_text
    fill_in "Lead", with: @sasaeru.lead
    fill_in "Sub lead 1", with: @sasaeru.sub_lead_1
    fill_in "Sub lead 2", with: @sasaeru.sub_lead_2
    fill_in "Sub lead 3", with: @sasaeru.sub_lead_3
    fill_in "Sub lead 4", with: @sasaeru.sub_lead_4
    fill_in "Sub title", with: @sasaeru.sub_title
    fill_in "Title", with: @sasaeru.title
    fill_in "Top text", with: @sasaeru.top_text
    click_on "Update Sasaeru"

    assert_text "Sasaeru was successfully updated"
    click_on "Back"
  end

  test "destroying a Sasaeru" do
    visit sasaerus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sasaeru was successfully destroyed"
  end
end
