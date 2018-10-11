# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

schools = [ "LSUS", "UAM", "Union", "La Tech"]

schools.each { |e| School.create({name: e}) }


10.times do |i|
  User.create({ name: Faker::Name.unique.name, school_id: School.order("RANDOM()").first.id})
end


School.all.each do |school|
  Tournament.create({ name: school.name + "invitational", school_id: school.id})
end

Tournament.all.each do |t|
  15.times do |i|
    r = Round.new()
    r.tournament = t
    t.rounds << r
    User.order("RANDOM()").first.rounds << r
    r.save
  end
end
