class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title, :null => false
      t.text :body
      t.integer :category_id
      t.text :tags
      t.datetime :published_at
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
