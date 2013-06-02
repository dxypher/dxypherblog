class Comment < ActiveRecord::Base
  attr_accessible :author, :body, :user_id

  belong_to :commentable, :polymorphic => true, :counter_cache => true
end
