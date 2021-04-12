class CompletionsController < ApplicationController
  def create
    todo.touch :completed_at
    # Touch looks at a timestamp, sets current time and persists the record
    redirect_to root_path
  end

  def todo
    current_user.todos.find(params[:todo_id])
  end
end