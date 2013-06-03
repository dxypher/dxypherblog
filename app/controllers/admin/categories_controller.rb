class Admin::CategoriesController < ApplicationController
  layout 'admin'
  respond_to :html, :json
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    @category.save
    redirect_to action: "index"
  end
end