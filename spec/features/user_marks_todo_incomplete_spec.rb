require 'rails_helper'

RSpec.feature 'User completes todo' do
  scenario 'user marks todo incomplete' do
    todo_title = 'My first todo'

    sign_in_as('me@example.com')
    create_todo(todo_title)
    click_on 'Mark complete'
    click_on 'Mark incomplete'

    expect(page).not_to display_completed_todo(todo_title)
    expect(page).to display_todo(todo_title)
  end
end
