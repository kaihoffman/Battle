feature 'Hitpoint display' do
  scenario 'Player 1 can view Player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Ibrahim: 100 HP'
  end
end
