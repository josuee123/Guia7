require 'rails_helper'

RSpec.feature "Users", type: :feature do
  # 1. Prueba de Creación Exitosa (Corrige el error de fill_in y click_button)
  feature "User want to create a new user successfully" do
    scenario "Create a new user account" do
      visit new_user_path
      
      # CORRECCIÓN: Se usa "Username" (o "user_username") y "Create User" para coincidir con el scaffold de Rails.
      fill_in "Username", :with => "Pedro" 
      fill_in "Password", :with => "12345678"
      fill_in "Email", :with => "pedro@gmail.com"
      click_button "Create User"
      
      expect(page).to have_text("User was successfully created")
    end
  end

  # 2. Prueba de Navegación (Verificar que se puede regresar al índice)
  feature "User want to see all users created" do
    scenario "User is on index page" do
      visit new_user_path
      click_link "Back"
      expect(page).to have_content("Users")
    end
  end

  feature "User want to see all users created" do
  scenario "User is on index page" do
    visit new_user_path
    click_link "Back"
    expect(page).to have_content("Users")
  end
end

end