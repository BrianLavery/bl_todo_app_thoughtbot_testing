require 'rails_helper'

RSpec.feature 'User sees own todos' do
  scenario "user doesn't see others todos" do
    todo_title = 'Buy milk'
    Todo.create!(title: todo_title, email: 'someone_else@example.com')

    sign_in_as 'someone@example.com'

    expect(page).not_to display_todo(todo_title)
  end
end
