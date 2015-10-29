require 'spec_helper'

feature 'dynamic hit points' do
#   As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
  scenario 'reduces player 2 HPs when attacked' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Wonder Woman: 100 HPs'
    expect(page).to have_content("Wonder Woman: 90 HPs")
  end

end
