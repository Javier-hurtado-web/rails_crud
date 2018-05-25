class ImagesController < ApplicationController


    def create
       article = Article.find(params[:id])
       images = article.image.new()
       images.url = permited[:url][0].original_filename
       images.article_id = params[:id]
       images.save
       redirect_to new_article_path(article)
    end
   
    private 

	def permited
		params.require(:image).permit(url: [])
	end

end
