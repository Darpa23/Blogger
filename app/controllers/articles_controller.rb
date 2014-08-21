class ArticlesController < ApplicationController

	include ArticlesHelper

	def index
		@articles=Article.all
	end

	def show
		@article=Article.find(params[:id])
		@comment=Comment.new
		@comment.article_id=@article_id
	end

	def new
		@article=Article.new
	end

	def create
		@article=Article.create(article_params)	
		flash.notice="'#{@article.title}' Created!"
		redirect_to @article
	end

	def destroy
		@article=Article.find(params[:id])
		@article.destroy
		flash.notice="'#{@article.title}' Deleted!"
		redirect_to articles_path
	end

	def edit
		@article=Article.find(params[:id])
	end

	def update
		@article=Article.find(params[:id])
		@article.update(article_params)
		flash.notice="'#{@article.title}' Updated!"
		redirect_to @article
	end

end
