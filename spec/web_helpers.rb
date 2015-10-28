
def sign_in_and_play
  visit '/'
  fill_in 'Player1', :with => 'He-Man'
  fill_in 'Player2', :with => 'Wonder Woman'
  click_button 'Submit'
end
