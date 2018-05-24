class PostsController < ApplicationController


 def new
 	@Post.new
 end

def create

	@article = Article.find(params[:id])
	@post = @article.post.new(permited)
	@article_posts = @article.post.all
	if @post.save
	redirect_to new_article_path(@article)
		else
			#zde se neukazuje validační chyba, protože renderuji nebo redirectuji a tím se smaže proměná musím použít flash
	    #redirect_to new_article_path(article), :flash => { :error => "Na kokot" } 
	    
	    #edit 
	    # už je asi opravena
	    render 'articles/show'
	end
	
end

private 

    def permited
		params.require(:post).permit(:text)
	end

end
