require 'spec_helper'

feature 'user management' do

  scenario 'start page has player name input fields' do
    visit '/'
    expect(page).to have_text("Player1 Player2")
  end

  scenario 'submit button takes you to the next page' do
    visit '/'
    click_button 'Submit'
    expect(current_path).to eq("/names")
  end

  scenario 'players input names, takes you to the next page and includes content' do
    visit '/'
    fill_in 'Player1', :with => 'Chuka'
    fill_in 'Player2', :with => 'Fergus'
    click_button 'Submit'
    expect(page).to have_content("Chuka vs Fergus")
  end

end
