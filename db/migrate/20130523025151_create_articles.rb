 class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.boolean :published, :default => false
      t.integer :comments_count, :default => 0
      t.integer :user_id

      t.timestamps
    end
  end
end
