class ArticlesController < ApplicationController
  def index
    @categories = Category.all
    @articles = Article.where(published: true).order("created_at DESC").page(params[:page]).per(10)
  end

  def show
    @article = Article.includes(:comments).find(params[:id])
  end

  def filter_by_category
    if params[:category] != "all"
      category = Category.includes(:articles).find(params[:category])
      @title = category.title
      @articles = category.articles.where(published: true).all
    else
      @articles = Article.where(published: true).all
    end
  end
end