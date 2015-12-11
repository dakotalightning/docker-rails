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

Page.create!({
  title: "About",
  content: "Marzipan sugar plum cake brownie. Dragée cookie tart carrot cake. Biscuit lollipop carrot cake jujubes. Toffee liquorice bonbon candy canes cookie. Halvah chupa chups cotton candy. Jujubes sweet dragée dragée bear claw. Sweet cake liquorice donut brownie wafer. Wafer halvah dragée topping caramels sesame snaps liquorice. Lollipop gingerbread cake muffin cheesecake jelly beans tiramisu sweet roll.
  Powder topping caramels candy cheesecake dessert. Oat cake cupcake toffee marzipan cake chupa chups. Bear claw sweet cake."
})
