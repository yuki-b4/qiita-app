class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end
  
  def create
    article = Article.new(article_params)
    if article.valid?
      article.save
      redirect_to root_path
    else 
      render :new  
    end
  end

  def edit 
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)
    redirect_to root_path
  end

  private
  
  def article_params
    params.require(:article).permit(:text, :title)
  end

end
