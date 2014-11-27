require 'rails_helper'

feature 'User adopts animal' do
  background {
    Animal.create! :name => 'buddy',
      :about_me => 'I am a chocolate labrador',
      :species => 'Dog',
      :gender => 'Male',
      :ideal_home => 'big backyard',
      :child_friendly => true,
      :breed => 'Dog'
  }

  scenario 'with user adopting animal' do
    log_in

    click_link 'Adopt'
    expect(page.current_path).to eq waiting_for_adoption_animals_path

    click_link 'buddy'
    # expect(page.current_path).to eq animal_path[:id]

    click_button 'Adopt me'
    expect(page).to have_content("Animal successfully adopted")
  end
end