class CreateArticleImages < ActiveRecord::Migration
  def change
    create_table :article_images do |t|
    	t.references :article, index:true
    	t.attachment :image
      t.timestamps
    end
  end
end
