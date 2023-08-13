require "application_system_test_case"

class CampisTest < ApplicationSystemTestCase
  setup do
    @campi = campis(:one)
  end

  test "visiting the index" do
    visit campis_url
    assert_selector "h1", text: "Campis"
  end

  test "should create campi" do
    visit campis_url
    click_on "New campi"

    fill_in "Address", with: @campi.Address
    fill_in "City", with: @campi.City
    fill_in "Deactivation", with: @campi.Deactivation
    fill_in "Name", with: @campi.Name
    fill_in "Neighborhood", with: @campi.Neighborhood
    fill_in "Number", with: @campi.Number
    fill_in "Postal code", with: @campi.Postal_code
    click_on "Create Campi"

    assert_text "Campi was successfully created"
    click_on "Back"
  end

  test "should update Campi" do
    visit campi_url(@campi)
    click_on "Edit this campi", match: :first

    fill_in "Address", with: @campi.Address
    fill_in "City", with: @campi.City
    fill_in "Deactivation", with: @campi.Deactivation
    fill_in "Name", with: @campi.Name
    fill_in "Neighborhood", with: @campi.Neighborhood
    fill_in "Number", with: @campi.Number
    fill_in "Postal code", with: @campi.Postal_code
    click_on "Update Campi"

    assert_text "Campi was successfully updated"
    click_on "Back"
  end

  test "should destroy Campi" do
    visit campi_url(@campi)
    click_on "Destroy this campi", match: :first

    assert_text "Campi was successfully destroyed"
  end
end
