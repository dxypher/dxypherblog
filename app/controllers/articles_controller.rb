class ArticlesController < ApplicationController
  def index
    @articles = Article.all(include: :comments)
  end

  def show
    @article = Article.find(params[:id])
  end
end