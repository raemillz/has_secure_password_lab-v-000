class WelcomeController < ApplicationController
  before_action :require_logged_in

  def index
    @user = User.find_by(params[:user][:id])
  end

end
