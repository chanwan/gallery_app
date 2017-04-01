class ImagesController < ApplicationController
	def index
		@images = Image.all.order("created_at DESC")
	end

	def new
		@picture =current_user.images.build
	end

	def create
		@picture =current_user.images.build(pic_params)
		if @picture.save
			redirect_to user_path(current_user.id)
		else
			render 'new'
		end
	end

	def destroy
		@picture = Image.find(params[:id])
		@picture.destroy

		redirect_to user_path(current_user.id)
	end


	private

	
	def pic_params
		params.require(:image).permit(:name, :picture)
	end

end
