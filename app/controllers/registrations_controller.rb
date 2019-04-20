class RegistrationsController < ApplicationController
	def new
		@user = User.new
	end

	def create
	    #complete this method
	    @user = User.new(user_params)
	    if @user.save
	    	flash[:notice] = "Successful registration"
	    	redirect_to root_url
	    else
	    	flash[:notice] = "User not saved"
	    	redirect_to registrations_url

	end
	def user_params
		params.require(:fields).permit(:name,:last_name,:email,:password,:phone)
	end
end
