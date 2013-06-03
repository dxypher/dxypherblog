class Admin::ArticlesController < ApplicationController
  layout 'admin'
  respond_to :html, :json
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    @category_options = Category.all
  end

  def create
    @article = Article.new(params[:article])
    @article.save
    respond_with [:admin, @article]
  end

  def show
    @article = Article.find(params[:id])
  end
end