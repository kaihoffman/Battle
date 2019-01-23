require 'player'
feature 'Player details' do
  scenario 'Player class can report the player name' do
    sign_in_and_play
    player1 = Player.new("Kai")
    expect(player1.name).to eq("Kai")
  end
end
