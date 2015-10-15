require 'rails_helper'

feature 'reviewing' do
  before do
    @user = create(:user)
    sign_in(@user)
    click_link 'Add a restaurant'
    fill_in 'Name', with: "KFC"
    click_button 'Create Restaurant'
  end

  scenario 'allows users to leave a review using a form' do
    visit '/restaurants'
    click_link 'Review KFC'
    fill_in "Thoughts", with: "so so"
    select '3', from: 'Rating'
    click_button 'Leave Review'
    expect(current_path).to eq '/restaurants'
    expect(page).to have_content('so so')
  end


  scenario 'allows users to leave a review using a form' do
    visit '/restaurants'
    click_link 'Review KFC'
    fill_in "Thoughts", with: "so so"
    select '3', from: 'Rating'
    click_button 'Leave Review'
    click_link 'Review KFC'
    expect(page).to have_content 'You may only leave one review'
  end
end
