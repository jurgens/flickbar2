require 'ffaker'

namespace :populate do

  desc 'Generate movies'
  task movies: :environment do
    50.times do 
      movie = Movie.new title: Faker::Lorem.sentence(5), year: (1922 + rand(90))
      movie.save!
    end
  end
end
