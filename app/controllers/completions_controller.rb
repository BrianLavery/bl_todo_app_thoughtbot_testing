class CompletionsController < ApplicationController
  def create
    # .touch here should set timestamp to current time and persist the record
    current_user.todos.find(params[:todo_id]).touch :completed_at
    redirect_to todos_path
  end
end
