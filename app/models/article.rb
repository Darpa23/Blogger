class Article < ActiveRecord::Base
	has_many :comments
	has_many :taggings
	has_many :tags, through: :taggings
	has_many :article_images

	def tags_list=(tags_string)
		tag_names= tags_string.split(",").collect { |tag| tag.strip.downcase }.uniq
		new_or_found_tags= tag_names.collect { |name| Tag.find_or_create_by(name: name) }
		self.tags= new_or_found_tags
	end

	def tags_list
		self.tags.collect do |tag|
			tag.name
		end.join(", ")
	end

	def images_array=(images)
		images.each do |image|
			self.article_images.create(image: image)
		end
	end

	def images_array

	end

	
end
