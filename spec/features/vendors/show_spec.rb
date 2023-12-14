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

    expect(page).to have_content("Saddle Up Smoothies")
    expect(page).to have_content("Name: Trang Kling II")
    expect(page).to have_content("Phone: 1-866-326-0903")
    expect(page).to have_content("Credit Accepted: No")
    expect(page).to have_content("Description: smoothie and juice vendor")
  end

  it 'vendors search for markets' do
    visit "/markets"

    click_link "More Info about 39 North Marketplace"

    expect(page).to have_link("Saddle Up Smoothies")
    click_link "Saddle Up Smoothies"

    # expect(page).to have_content("39 North Marketplace")
    # expect(page).to have_content("Sparks")
    # expect(page).to have_content("Nevada")
    # expect(page).to have_content("Downtown Sparks Victorian Ave")
    # expect(page).to have_content("89431")
    fill_in 'Name', with: "39 North Marketplace"
    fill_in 'City', with: "Sparks"
    fill_in 'State', with: "Nevada"

    click_button "Find Market"
  end
end