class ImagesController < ApplicationController
	@images = Image.all.order("created_at DESC")
end
