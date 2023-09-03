require 'rails_helper'

RSpec.feature "Caronas", type: :feature do
  scenario "Teste Funcional Caronas" do
    visit new_carona_path
    fill_in "Nome", with: "Nome do Condutor"
    select "Nome do Campus", from: "Local partida", match: :first
    select "Nome do Campus", from: "Destino", match: :first
    fill_in "Dia", with: Date.today
    fill_in "Hora", with: Time.now
    fill_in "Quantidade passageiros", with: 2
    fill_in "Valor custo", with: 10
    click_button "Create Carona"

    expect(page).not_to have_text("errors prohibited this carona from being saved")
  end
end