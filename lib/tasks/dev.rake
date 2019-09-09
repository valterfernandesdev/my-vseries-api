namespace :dev do
  desc "Configure the developer enviroment"
  task setup: :environment do
    puts "Creating Series Genre..."
    genres = %w(Action Romance Sci-Fi Horror)
    genres.each do |genre|
      Genre.create!(
        name: genre
      )
    end
    puts "Series Genres Created!"
    
    ########################################
    
    puts "Creating Series..."
    serie_statuses = %w(Hiato Finished Showing)
    serie_statuses.each do |serie_status|
      15.times do |s|
        Serie.create!(
          name: Faker::Book.unique.title,
          status: serie_status,
          genre: Genre.all.sample
          # episode: Faker::Number.decimal_part(digits: 2),
        )
      end
    end
    puts "Series Created!"
  end
end
