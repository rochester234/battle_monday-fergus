require 'spec_helper'

feature 'user management' do

  # scenario 'start page has player name input fields' do
  #   visit '/'
  #   expect(page).to have_text("Player1 Player2")
  # end
  #
  # scenario 'submit button takes you to the next page' do
  #   visit '/'
  #   click_button 'Submit'
  #   expect(current_path).to eq("/play")
  # end

  scenario 'players input names, takes you to the next page and includes content' do
    sign_in_and_play
    expect(page).to have_content("He-Man: Hit Points 100")
  end

end
