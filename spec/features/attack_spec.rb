require 'spec_helper'

feature 'attack function' do
#
#   As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

  scenario 'players input names, takes you to the next page and includes content' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("He-Man attacked Wonder Woman")
  end

end
