class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    comment = article.comments.create(body: params[:comment][:body], user: current_user, author: current_user.name)
    redirect_to article_path(article)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    comment = Comment.find(params[:id])
    @article = comment.article
    comment.update_attributes(params[:comment])
    redirect_to article_path(@article)
  end

  def destroy
    comment = Comment.find(params[:id])
    @article = comment.article
    comment.delete
    redirect_to article_path(@article)
  end
end