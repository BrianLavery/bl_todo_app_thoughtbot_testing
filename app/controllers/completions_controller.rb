class CompletionsController < ApplicationController
  def create
    todo.touch :completed_at
    redirect_to todos_path
  end

  private

  def todo
    # .touch here should set timestamp to current time and persist the record
    current_user.todos.find(params[:todo_id])
  end
end
