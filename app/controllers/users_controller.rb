class UsersController < ApplicationController
	before_action :user_find, only: [:show]



	def show
		@images = current_user.images
	end


	private

	
	def user_find
		@user = User.find_by(current_user.id)
	end
end
