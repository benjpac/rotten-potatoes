# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
Review.destroy_all

50.times do |index|
  f = Movie.create!(title: Faker::GameOfThrones.city,
                genre: Faker::Zelda.character,
                director: Faker::GameOfThrones.character,
                writer: Faker::LordOfTheRings.character,
                studio: Faker::HarryPotter.location,
                released: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                runtime: Faker::Number.between(50, 200),
                summary: Faker::Hipster.paragraph(2, true, 4),
                rating: Faker::Beer.hop
                )
  50.times do |index|              
    Review.create!(author: Faker::LordOfTheRings.character,
                  rating: Faker::Number.between(1, 100),
                  summary: Faker::Hipster.paragraph(4, true, 4),
                  movie_id: f.id,
                  )
  end
end

p "Created #{Movie.count} movies"
p "Created #{Review.count} reviews"