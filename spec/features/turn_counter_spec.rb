feature 'Turn counter' do
  scenario 'Turn counter is incremented after attack' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content('TURN 2')
  end
end
