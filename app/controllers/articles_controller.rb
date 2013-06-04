class ArticlesController < ApplicationController
  def index
    @categories = Category.all
    @articles = Article.all(include: :comments)
  end

  def show
    @article = Article.find(params[:id])
  end

  def filter_by_category
    @categories = Category.all
    if params[:category] != "all"
      category = Category.find(params[:category])
      @title = category.title
      @articles = category.articles.all
    else
      @articles = Article.all(include: :comments)
    end
  end
end