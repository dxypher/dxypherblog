class Article < ActiveRecord::Base
  attr_accessible :comments_count, :content, :publish, :title, :category_ids, :published

  has_and_belongs_to_many :categories
  has_many :comments
  belongs_to :user
end
