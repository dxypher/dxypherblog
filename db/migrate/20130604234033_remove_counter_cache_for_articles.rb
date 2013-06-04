class RemoveCounterCacheForArticles < ActiveRecord::Migration
  def change
    remove_column :categories, :articles_count
  end
end
