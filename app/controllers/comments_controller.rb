class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)

		if @comment.save
			redirect_to :back
		else
		end

	end

	private
	def comment_params
		params.require(:comment).permit(:mark, :comment, :image_id, :user_id)
	end
end



