class Category < ActiveRecord::Base
  attr_accessible :title
  validates :title, :uniqueness => { :case_sensitive => false }

  has_and_belongs_to_many :articles
end
