class TagsController < ApplicationController

	def show
		@tag=Tag.find(params[:id])		
	end

	def index
		@tags=Tag.all
	end

	def delete_tagging
		Tagging.find_by(article_id: params[:article_id], tag_id: params[:tag_id]).destroy
		redirect_to tag_path(params[:tag_id])
	end

	def destroy
		Tag.find(params[:id]).destroy
		redirect_to tags_path
	end

end
