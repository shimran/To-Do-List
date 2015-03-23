require 'rails_helper'

describe "the add a list process" do
  it "adds a new list" do
    visit lists_path
    click_on 'New List'
    fill_in 'Name', :with => 'Home stuff'
    fill_in 'Description', :with => 'Stuff around the house'
    click_on 'Create List'
    expect(page).to have_content 'Lists'
  end


end
