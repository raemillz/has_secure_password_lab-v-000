class WelcomeController < ApplicationController
  before_action :require_logged_in

  def index
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

end
