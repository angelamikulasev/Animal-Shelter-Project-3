require 'rails_helper'

feature 'User surrenders animal' do
  given(:name) {'buddy'}
  given(:about_me) {'im a labrador'}
  given(:species) {'Dog'}
  given(:gender) {'Male'}
  given(:ideal_home) {'Big backyard'}
  given(:child_friendly) {True}

  scenario 'with valid details' do
    log_in

    click_link 'Surrender your pet'
    expect(page.current_path).to eq new_animal_path
    
    fill_in 'animal[name]', with: name
    fill_in 'animal[about_me]', with: about_me
    # fill_in 'animal[species]', with: species
    choose  'animal_gender_male'
    fill_in 'animal[ideal_home]', with: ideal_home
    choose 'animal_child_friendly_no'
    # fill_in 'animal[image]'
    # fill_in 'animal[remote_image_url]'
    click_button 'Create Animal'

    expect(page).to have_content("Animal successfully created and waiting for adoption")
    # expect(page.current_path).to eq animal_path

  end
end