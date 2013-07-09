module ArticlesHelper
  def filter_by_category
    if params[:category] != "all"
      category = Category.includes(:articles).find(params[:category])
      @title = category.title
      @articles = category.articles.where(published: true).order("created_at DESC").page(params[:page]).per(5)
    else
      @articles = Article.where(published: true).order("created_at DESC").page(params[:page]).per(5)
    end
  end
end