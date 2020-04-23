# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
channel_names = ["HBO", "Star Sports", "ESPN", "National Geographic", "CNN"]
channel_names.each{|c| Channel.create(name: c)}

Show.create(name: "The Hulk", start_time: "2020-04-24 11:00", channel_id: 1)
Show.create(name: "India vs Australia Cricket Match", start_time: "2020-04-24 11:00", channel_id: 2)
Show.create(name: "Soccer Match", start_time: "2020-04-24 11:00", channel_id: 3)
Show.create(name: "Adventures", start_time: "2020-04-24 11:00", channel_id: 4)
Show.create(name: "News", start_time: "2020-04-24 11:00", channel_id: 5)