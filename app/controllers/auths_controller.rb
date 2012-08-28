class AuthsController < ApplicationController

	def index
	  @auths = current_user.auths if current_user
	end

	def create
	  auth = request.env["rack.auth"]
	  current_user.auths.find_or_create_by_provider_and_uid(auth['provider'], auth['uid'])
	  flash[:notice] = "Authentication successful."
	  redirect_to auths_url
	end

	def destroy
	  @auth = current_user.auths.find(params[:id])
	  @auth.destroy
	  flash[:notice] = "Successfully destroyed authentication."
	  redirect_to auths_url
	end
end
