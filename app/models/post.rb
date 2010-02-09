class Post < ActiveRecord::Base
  belongs_to :category

  searchable do
    text :title, :default_boost => 2
    text :tags
    text :body
    integer :category_id, :references => Category
    time :published_at
    string :tags, :multiple => true do
      tags.split(/\W+/)
    end
  end
end
