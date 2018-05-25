class ImagesController < ApplicationController


    def create
       article = Article.find(params[:id])
       images = article.image.new(permited)
       images.save
       redirect_to new_article_path(article)
    end
   
    private 

	def permited
		params.require(:image).permit(url: [])
	end

end
