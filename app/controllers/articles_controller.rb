class ArticlesController < ApplicationController
  def index
    @categories = Category.all
    @articles = Article.where(published: true)
  end

  def show
    @article = Article.includes(:comments).find(params[:id])
  end

  def filter_by_category
    @categories = Category.all
    if params[:category] != "all"
      category = Category.find(params[:category])
      @title = category.title
      @articles = category.articles.where(published: true)
    else
      @articles = Article.where(published: true)
    end
  end
end