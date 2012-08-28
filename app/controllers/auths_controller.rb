class AuthsController < ApplicationController
  load_and_authorize_resource
	def index
	  @auths = current_user.auths if current_user
	end

	def create
          auth = request.env["omniauth.auth"]
	  current_user.auths.find_or_create_by_provider_and_uid_and_token!(auth['provider'], auth['uid'], auth['credentials']['token'])
	  flash[:notice] = "Authentication successful."
	  redirect_to "dashboard/social" 
	end

	def destroy
	  @auth = current_user.auths.find(params[:id])
	  @auth.destroy
	  flash[:notice] = "Successfully destroyed authentication."
	  redirect_to auths_url
	end
end
