class CreateArticleCategoryTable < ActiveRecord::Migration
  def change
    create_table :articles_categories, :id => false do |t|
      t.integer :articles_id
      t.integer :categories_id
    end
  end
end
