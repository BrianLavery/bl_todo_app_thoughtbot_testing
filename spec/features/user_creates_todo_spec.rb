require 'rails_helper'

RSpec.feature 'User creates todo' do
  scenario 'user successfully creates a todo' do
    todo_title = 'My first todo'

    sign_in_as('me@example.com')
    create_todo(todo_title)

    expect(page).to display_todo(todo_title)
  end
end
