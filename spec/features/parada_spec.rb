require 'rails_helper'

RSpec.feature "Paradas", type: :feature do
  scenario "Teste Funcional Paradas" do
    carona = FactoryBot.create(:carona)
    visit edit_carona_path(carona)

    fill_in "Local", with: "Local de Parada"
    fill_in "Data hora", with: "2023-09-01 08:00"
    click_button "Adicionar Parada"

    expect(page).not_to have_text("errors prohibited this parada from being saved")
  end
end


