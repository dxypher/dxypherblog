class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @categories = Category.all
    @articles = Article.where(published: true).order("created_at DESC").page(params[:page]).per(5)
  end

  def show
    @article = Article.includes(:comments).find(params[:id])
  end
end