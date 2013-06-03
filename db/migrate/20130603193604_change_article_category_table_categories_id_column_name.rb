class ChangeArticleCategoryTableCategoriesIdColumnName < ActiveRecord::Migration
  def change
    rename_column :articles_categories, :categories_id, :category_id
  end
end
