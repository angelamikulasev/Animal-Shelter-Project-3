require 'capybara/rspec'
require 'spec_helper'
require 'pry'

feature 'User signs up' do 
  given(:firstname) { 'Annie' }

  scenario 'with valid details' do
    visit new_user_path
    fill_in 'user[firstname]', with: firstname
    fill_in 'user[lastname]', with: 'mik'
    fill_in 'user[email]', with: 'annie@annie.com'
    fill_in 'user[password]', with: 'chicken'
    click_button 'Create User'

    expect(page).to have_content('Sign out')
    expect(page).to have_content("Welcome to Animal Rescue #{ firstname }")
  end

  # scenario 'with invalid sign up' do
  #   sign_up_with '', '', '', ''
  #   expect(page).to have_content('Adopt', 'FAQ', 'About', 'Search for species', 'Sign up', 'Log in' )
  # end

  # def sign_up_with(firstname, lastname, email, password_digest)
  #   visit users_path
  #   fill_in 'Firstname', with: firstname
  #   fill_in 'Lastname', with: lastname
  #   fill_in 'Email', with: email
  #   fill_in 'password', with: password_digest
  #   click_button 'Create User'
  # end
end
