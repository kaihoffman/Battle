feature 'Name submission' do
  scenario 'Can accept two names and store them' do
    sign_in_and_play
    expect(page).to have_content 'Kai vs. Ibrahim'
  end
end
