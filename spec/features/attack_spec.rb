feature 'Attacking mechanics' do
  scenario 'Player 1 can attack Player 2' do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content 'Kai has attacked Ibrahim'
  end
end
