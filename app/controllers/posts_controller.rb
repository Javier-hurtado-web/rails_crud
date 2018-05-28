class PostsController < ApplicationController
	before_action :authenticate_user!

 def new
	@image = Image.new
 	@post = Post.new
 end

def create
	
	@article = Article.find(params[:id])
	@post = @article.post.new(permited) 
	@article_posts = @article.post.all
	@image = Image.new
	@images = Image.all
	if @post.save
	redirect_to new_article_path(@article)
		else
		
	    render 'articles/show'
	end
	
end
def edit
    @post = Post.find(params[:id])
end


private 
	
	
    def permited
		params.require(:post).permit(:text)
	end

end
