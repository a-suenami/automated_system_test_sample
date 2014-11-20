require 'spec_helper'

describe "Todo list page" do
  before do
    Capybara.app_host = 'http://localhost:3000'
  end

  it 'display "Listing todos" as a title.' do
    visit '/todos'
    expect(page).to have_content 'Listing todos'
  end

  it 'can register new todo.' do
    visit '/todos'
    click_link 'New Todo'
    fill_in 'Content', with: 'This is new todo.'
    click_button 'Create Todo'

    expect(page).to have_content 'Todo was successfully created.'
    expect(page).to have_content 'This is new todo.'

    click_link 'Back'

    expect(page).to have_content 'This is new todo.'
  end
end
