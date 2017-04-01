class UsersController < ApplicationController
	def show
		User.find_by(current_user.id)
	end
end
