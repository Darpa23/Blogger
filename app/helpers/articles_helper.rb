module ArticlesHelper
	def article_params
		params.require(:article).permit(:title,:body,:tags_list,:images_array)
	end
end
