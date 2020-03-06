feature 'See hit points' do
  scenario 'See player 2s hit points' do
    visit ('/')  
    fill_in :p1_name, with: 'Duffy duck'
    fill_in :p2_name, with: 'Bugs bunny'
    click_button 'Submit'
    expect(page).to have_content 'Bugs bunny has 100 points'
  end
end