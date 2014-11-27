require 'rails_helper'

feature 'User signs up' do 
  given(:firstname) { 'Annie' }

  scenario 'with valid details' do
    visit new_user_path

    fill_in 'user[firstname]', with: firstname
    fill_in 'user[lastname]', with: 'mik'
    fill_in 'user[email]', with: 'annie@annie.com'
    fill_in 'user[password]', with: 'chicken'
    fill_in 'user[password_confirmation]', with: 'chicken'
    click_button 'Create User'

    expect(page).to have_content('Sign out')
    expect(page).to have_content("Welcome to Animal Rescue #{ firstname }")
  end
end
