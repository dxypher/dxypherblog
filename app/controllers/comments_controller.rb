class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    user = current_user
    comment = article.comments.new(params[:comment])
    comment.user = user
    comment.save
    redirect_to article_path(article)
  end
end