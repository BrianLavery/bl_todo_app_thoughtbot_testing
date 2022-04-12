class SessionsController < ApplicationController
  def new
  end

  def create
    set_current_email
    redirect_to root_path
  end
end
