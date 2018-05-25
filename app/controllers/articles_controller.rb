class ArticlesController < ApplicationController
    
    def index
    	@articles = Article.all
    end


	def new
		@article = Article.new
	end

	def create
	    @article = Article.new(permited)
	    
	    if @article.save
	    redirect_to new_article_path(@article)
	    else
	    	render 'new'
	    end
	end

	def show
		@image = Image.new
		@post = Post.new
		@article = Article.find(params[:id])
		@article_posts = @article.post.all
		@images = @article.image.all
	end


     def edit
     	@article = Article.find(params[:id])
     end 


     def update

     	article = Article.find(params[:id])
        article.update(permited)
        redirect_to new_article_path(article)
     	
     end
    def destroy
    	article = Article.find(params[:id])
        article.destroy
        redirect_to articles_path
    end

	private 

	def permited
		params.require(:article).permit(:title, :body)
	end
end
