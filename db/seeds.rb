# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do
  User.create ({
    name: Faker::Name.name,
  })
end

100.times do
  doge_start = %w(how such very many)
  doge_end = %w(wonder tweet title blog marvels sparkle tingle yolo! mystery ROFL OMG totes! post comment lorem ipsum)
  doge_exclaim = ["???", "!", "!!!", " <3"]
  doge = 3.times.map { (doge_start.sample + " " + doge_end.sample + doge_exclaim.sample + "\n").capitalize }.join("")
  Tweet.create ({
    message: doge,
    user_id: Faker::Number.between(1, 50)
  })
end
