require 'game'

feature 'game' do
  scenario 'accepts two Player instances' do
    sign_in_and_play
    expect($game.player1.name).to eq "Kai"
    expect($game.player2.name).to eq "Ibrahim"
  end
end
