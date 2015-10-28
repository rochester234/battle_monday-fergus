require 'spec_helper'

feature 'viewing opponents hit points' do

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points


    scenario 'views an opponents hitpoints' do
      visit '/'
      fill_in 'Player1', :with => 'Wonder Woman'
      fill_in 'Player2', :with => 'He-Man'
      click_button 'Submit'
      expect(page).to have_content("He-Man: 100")
    end
end
