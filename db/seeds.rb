# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


##
# Default
#
User.create!({
  first_name: "Dakota",
  last_name: "Lightning",
  email: "dakota@animikii.com",
  username: "dakotalightning",
  password: "dakotalightning",
  password_confirmation: "dakotalightning"
})
