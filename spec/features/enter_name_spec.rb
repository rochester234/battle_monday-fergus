require 'spec_helper'

feature 'user management' do

  scenario 'players input names, takes you to the next page and includes content' do
    sign_in_and_play
    expect(page).to have_content("He-Man: Hit Points 100")
  end

end
