class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:user][:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = @user.id
      @user = user
      redirect_to user_path(@user)
    else
      flash[:alert] = "Incorrect Password."
      redirect_to controller: 'sessions', action: 'new'
    end
  end
end
