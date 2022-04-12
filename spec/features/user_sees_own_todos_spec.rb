require 'rails_helper'

RSpec.feature 'User sees own todos' do
  scenario "user doesn't see others todos" do
    Todo.create!(title: 'Buy milk', email: 'someoneelse@example.com')

    sign_in_as 'someone@example.com'

    expect(page).not_to have_css '.todos li', text: 'Buy milk'
  end
end
