class UsersController < ApplicationController
	before_action :user_find, only: [:show]



	def show

		@images = @user.images
	end


	private

	
	def user_find
		@user = User.find(params[:id])
	end
end
