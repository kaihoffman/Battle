feature 'Hitpoint display' do
  scenario 'Player 1 can view Player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Ibrahim: 100 HP'
  end

  scenario 'After attacking, Player 2 hit points are reduced by 10' do
    sign_in_and_play
    p1_attack
    expect(page).to have_content "Ibrahim: 90 HP"
  end
end
