class WelcomeController < ApplicationController
  before_action :require_logged_in

  def index
    @user = User.find_by(id: params[:id])
  end

end
