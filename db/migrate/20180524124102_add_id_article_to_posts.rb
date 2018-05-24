class AddIdArticleToPosts < ActiveRecord::Migration[5.1]
  def change
  	add_column :posts, :article_id, :integer
  end
end
