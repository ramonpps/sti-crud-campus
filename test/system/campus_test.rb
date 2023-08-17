require "application_system_test_case"

class CampusTest < ApplicationSystemTestCase
  setup do
    @campu = campus(:one)
  end

  test "visiting the index" do
    visit campus_url
    assert_selector "h1", text: "Campus"
  end

  test "should create campu" do
    visit campus_url
    click_on "New campu"

    fill_in "Bairro", with: @campu.Bairro
    fill_in "Cep", with: @campu.CEP
    fill_in "Cidade", with: @campu.Cidade
    fill_in "Desativação", with: @campu.Desativação
    fill_in "Descrição", with: @campu.Descrição
    fill_in "Endereço", with: @campu.Endereço
    fill_in "Número", with: @campu.Número
    click_on "Create Campu"

    assert_text "Campu was successfully created"
    click_on "Back"
  end

  test "should update Campu" do
    visit campu_url(@campu)
    click_on "Edit this campu", match: :first

    fill_in "Bairro", with: @campu.Bairro
    fill_in "Cep", with: @campu.CEP
    fill_in "Cidade", with: @campu.Cidade
    fill_in "Desativação", with: @campu.Desativação
    fill_in "Descrição", with: @campu.Descrição
    fill_in "Endereço", with: @campu.Endereço
    fill_in "Número", with: @campu.Número
    click_on "Update Campu"

    assert_text "Campu was successfully updated"
    click_on "Back"
  end

  test "should destroy Campu" do
    visit campu_url(@campu)
    click_on "Destroy this campu", match: :first

    assert_text "Campu was successfully destroyed"
  end
end
