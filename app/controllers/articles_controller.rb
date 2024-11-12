class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :destroy, :show]
  def index
    @articles = Article.all
  end

  # Show article details
  def show
  end

  # Create a new article - 2 methods
  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to articles_path
  end

  # Edit an existing article - 2 methods
  def edit
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  # Delete an existing article
  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
