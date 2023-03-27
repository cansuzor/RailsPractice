class ArticlesController < ApplicationController
  # 
  # GET /articles
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new 
    # 1. Grab the data you need for your view here
    @article = Article.new
    # 2. Then render the view/html (using the data)
    # By default rails renders this view
    # render 'articles/new.html.erb'
  end

  # POST /articles
  def create
    # Creating article in memory with the data sent
    @article = Article.new(article_params)
    # Then we need to save the data to our DB
    if @article.save
      redirect_to article_path(@article) # /articles/:id
    else 
      render :new, status: :unprocessable_entity
    end
  end

private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end