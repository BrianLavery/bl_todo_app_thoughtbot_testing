require 'rails_helper'

feature 'User visits homepage' do
  scenario 'successfully' do
    visit root_path # Capybara

    expect(page).to have_css 'h1', text: 'Todos' # Rspec  passing in page as object from Capybara
  end
end
