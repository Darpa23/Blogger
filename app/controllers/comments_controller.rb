class CommentsController < ApplicationController

	def comment_params
		params.require(:comment).permit(:author_name, :body)		
	end

	def create
		@comment=Comment.new(comment_params)
		@comment.article_id=params[:article_id]
		@comment.save
		redirect_to @comment.article
	end
end