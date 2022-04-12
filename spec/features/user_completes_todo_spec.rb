require 'rails_helper'

RSpec.feature 'User completes todo' do
  scenario 'user successfully completes a todo' do
    todo_title = 'My first todo'

    sign_in_as('me@example.com')
    create_todo(todo_title)
    click_on 'Mark complete'

    expect(page).to display_todo(todo_title)
  end
end
