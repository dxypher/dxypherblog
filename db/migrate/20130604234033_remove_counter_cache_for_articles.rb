class RemoveCounterCacheForArticles < ActiveRecord::Migration
  def up
    remove_column :categories, :articles_count
  end

  def down
    add_column :categories, :articles_count, :integer
  end
end
