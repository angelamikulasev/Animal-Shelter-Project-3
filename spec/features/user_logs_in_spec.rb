require 'rails_helper'

feature 'User logs in' do
  given(:firstname) { 'annie' }
  given(:email) { 'annie@annie.com' }
  given(:password) { 'chicken' }

  background {
    User.create! :firstname => firstname, 
      :lastname => 'mik', 
      :email => email, 
      :password => password 
  }

  scenario 'with valid details' do
    visit new_session_path
    fill_in 'session[email]', with: email
    fill_in 'session[password]', with: password
    click_button 'Login'

    expect(page).to have_content('Sign out')
    expect(page).to have_content("Welcome back, #{firstname}")
  end
end