require "test_helper"

class CampisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campi = campis(:one)
  end

  test "should get index" do
    get campis_url
    assert_response :success
  end

  test "should get new" do
    get new_campi_url
    assert_response :success
  end

  test "should create campi" do
    assert_difference("Campi.count") do
      post campis_url, params: { campi: { Address: @campi.Address, City: @campi.City, Deactivation: @campi.Deactivation, Name: @campi.Name, Neighborhood: @campi.Neighborhood, Number: @campi.Number, Postal_code: @campi.Postal_code } }
    end

    assert_redirected_to campi_url(Campi.last)
  end

  test "should show campi" do
    get campi_url(@campi)
    assert_response :success
  end

  test "should get edit" do
    get edit_campi_url(@campi)
    assert_response :success
  end

  test "should update campi" do
    patch campi_url(@campi), params: { campi: { Address: @campi.Address, City: @campi.City, Deactivation: @campi.Deactivation, Name: @campi.Name, Neighborhood: @campi.Neighborhood, Number: @campi.Number, Postal_code: @campi.Postal_code } }
    assert_redirected_to campi_url(@campi)
  end

  test "should destroy campi" do
    assert_difference("Campi.count", -1) do
      delete campi_url(@campi)
    end

    assert_redirected_to campis_url
  end
end
