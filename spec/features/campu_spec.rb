require 'rails_helper'

RSpec.feature "Campus", type: :feature do
  scenario "Teste Funcional Campus" do
    visit new_campu_path

    fill_in "Descrição", with: "Nome do Campus"
    fill_in "Endereço", with: "Endereço do Campus"
    fill_in "Número", with: 123
    fill_in "Bairro", with: "Bairro do Campus"
    fill_in "Cidade", with: "Cidade do Campus"
    fill_in "Cep", with: "12345-678"
    fill_in "Desativação", with: nil
    click_button "Create Campu"

    expect(page).not_to have_text("errors prohibited this campu from being saved")
  end
end