feature 'Turn counter' do
  scenario 'Turn counter is incremented after attack' do
    sign_in_and_play
    expect { click_button('Attack') }.to change { $game.turn_number }.by(1)
  end
end
