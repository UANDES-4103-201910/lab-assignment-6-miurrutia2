class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		#complete this method
		@user = User.where(params[:email],params[:password])
		if @user
			session[:current_user_id] = user.id
			flash[:notice] = "You are now logged in to the site"
			redirect_to user_path
		else
			flash[:notice] = "Email or password is not valid"
			redirect_to root_url

	end

	def destroy
		#complete this method
		session[:current_user_id] = nil
		flash[:notice] = "You have been successfully logged out"
    	redirect_to root_url
	end
end
