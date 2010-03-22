class Post < ActiveRecord::Base
  belongs_to :category

  searchable do
    text :title, :default_boost => 2
    text :tags
    text :body, :stored => true
    integer :category_id, :references => Category
    time :published_at, :trie => true
    string :tags, :multiple => true do
      tags.split(/\W+/)
    end
  end
end
