require 'rails_helper'

RSpec.feature 'User completes todo' do
  scenario 'user successfully completes a todo' do
    todo_title = 'My first todo'

    sign_in_as('me@example.com')
    click_link 'Add a new todo'
    fill_in 'Title', with: todo_title
    click_on 'Submit'

    click_on 'Mark complete'

    expect(page).to have_css '.todos li.completed', text: todo_title
  end
end
