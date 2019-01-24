feature 'switches players' do
  scenario 'after ' do
    sign_in_and_play
    p1_attack
    expect(page).to have_content("#{$game.player1.name}: #{$game.player1.hitpoints}")
  end
end
