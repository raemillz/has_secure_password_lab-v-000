class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    flash[:alert] = "Incorrect Password." unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end
end
