class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @current_user = User.id

  end

  def current_user
	#complete this method
    @logged_user = cookies[:current_user]

  end

  def is_user_logged_in?
	#complete this method
    logged_in = false
    if @logged_user
      logged_in = true
      
    end
    if logged_in then true else redirect_to root_path end 
  end
end
