class Comment < ActiveRecord::Base
  attr_accessible :author, :body, :user_id

  # belongs_to :commentable, :polymorphic => true, :counter_cache => true
  belongs_to :article, :counter_cache => true
  belongs_to :user
end
