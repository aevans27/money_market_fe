require 'rails_helper'

RSpec.describe 'Market show page' do 
  it 'displays market info and vendors for it' do
    visit "/markets"
    
    expect(page).to have_link("More Info about 39 North Marketplace")
    expect(page).to have_content("Name: 39 North Marketplace")
    expect(page).to have_content("City: Sparks")
    expect(page).to have_content("State: Nevada")

    click_link "More Info about 39 North Marketplace"

    expect(page).to have_content("39 North Marketplace")
    expect(page).to have_content("Sparks")
    expect(page).to have_content("Nevada")
    expect(page).to have_content("Downtown Sparks Victorian Ave")
    expect(page).to have_content("89431")

    expect(page).to have_link("Saddle Up Smoothies")
    click_link "Saddle Up Smoothies"
  end
end