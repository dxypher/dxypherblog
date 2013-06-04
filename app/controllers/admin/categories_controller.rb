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

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(params[:category])
    redirect_to action: "index"
  end

  def destroy
    @category = Category.find(params[:id]).delete
    redirect_to action: "index"
  end
end