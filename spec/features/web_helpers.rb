def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Kai'
  fill_in :player_2_name, with: 'Ibrahim'
  click_button 'Submit'
end

def p1_attack
  click_button 'Attack'
end
