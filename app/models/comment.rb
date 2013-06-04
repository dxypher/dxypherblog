class Comment < ActiveRecord::Base
  attr_accessible :author, :body, :user

  belongs_to :article, :counter_cache => true
  belongs_to :user
end
