require 'rails_helper'

feature 'User logs in' do
  given(:options) { { :firstname => 'jack' } }
  given(:firstname) { options[:firstname] }

  scenario 'with valid details' do
    log_in options

    expect(page).to have_content('Sign out')
    expect(page).to have_content("Welcome back, #{firstname}")
    expect(page.current_path).to eq(root_path)
  end
end