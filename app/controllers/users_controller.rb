class UsersController < ApplicationController
	before_action :user_find, only: [:show]



	def show
	end


	private

	
	def user_find
		@user = User.find_by(current_user.id)
	end
end
