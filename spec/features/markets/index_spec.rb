require 'rails_helper'

RSpec.describe 'Market viewing page and show' do 
  it 'sets accepted to true for a user who accepts an invite' do
    visit "/markets"
    
    expect(page).to have_link("More Info about 39 North Marketplace")
    expect(page).to have_content("Name: 39 North Marketplace")
    expect(page).to have_content("City: Sparks")
    expect(page).to have_content("State: Nevada")

    click_link "More Info about 39 North Marketplace"
  end
end
