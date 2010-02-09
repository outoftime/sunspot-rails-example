namespace :faker do
  desc "Generate fake data"
  task :generate => [:"db:reset", :environment] do
    categories = %w(Cars Dinosaurs Rockets Trucks Spaceships Robots Big\ Robots Fighter\ Planes).map do |name|
      Category.create!(:name => name)
    end
    100.times do
      Post.create! do |post|
        post.title = Faker::Company.catch_phrase
        post.body = Faker::Lorem.paragraphs(4).join(' ')
        post.category_id = categories[rand(categories.length)].id
        post.tags = Faker::Company.bs
        post.published_at =
          if rand(10) < 7
            Time.now - (rand(190) - 10).days
          end
      end
    end
  end
end
