require 'rails_helper'

RSpec.describe 'User Story - Merchants', :vcr do
  it 'as a visitor, when I visit /merchants, I should see a list of merchants by name' do

    visit '/merchants'

    expect(page).to have_content("List of Merchants By Name")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
    expect(page).to have_content("Cummings-Thiel")

    click_link "Schroeder-Jerde"  
    expect(current_path).to eq(merchant_items_path(1))
  end

  it 'each merchants show page should display a list of the merchants items' do
    visit merchant_items_path(1)

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Aliquam")
  end
end