require '~/Desktop/Makers/Projects/Week_Challenges/Battle/app.rb'

feature 'Battle' do
  scenario 'Opening the battle app' do
    visit ('/testing')  
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Enter names' do
  scenario 'Players entering and submitting their names in a form' do
    visit ('/')  
    fill_in :p1_name, with: 'Duffy duck'
    fill_in :p2_name, with: 'Bugs bunny'
    click_button 'Submit'
    expect(page).to have_content 'Duffy duck and Bugs bunny'
  end
end
   
 

