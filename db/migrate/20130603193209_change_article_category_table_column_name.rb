class ChangeArticleCategoryTableColumnName < ActiveRecord::Migration
  def change
    rename_column :articles_categories, :articles_id, :article_id
  end
end
