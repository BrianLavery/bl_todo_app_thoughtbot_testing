require 'rails_helper'

RSpec.feature 'User creates todo' do
  scenario 'user successfully creates a todo' do
    todo_title = 'My first todo'

    visit root_path
    click_link 'Add a new todo'
    fill_in 'Title', with: todo_title
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: todo_title
  end
end
