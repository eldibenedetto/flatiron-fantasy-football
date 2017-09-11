# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gino = User.create(username: "Eugene",password_digest: "Turtles")
pep = User.create(username: "Natalie",password_digest: "Patriots")

league1 = League.create(name: "The League", owner: pep)

ginos_giants = Team.create(name: "Ginos Giants", user: gino, league: league1)
peppy_pats = Team.create(name: "Peppy Pats", user: pep, league: league1)

brady = Player.create(name: "Tom Brady", position: "QB")
aaron = Player.create(name: "Aaron Rogers", position: "QB")
obj = Player.create(name: "Odell Beckham Jr.", position: "WR")

transaction1 = Transaction.create(player: brady, team: peppy_pats)
transaction2 = Transaction.create(player: aaron, team: ginos_giants)
transaction3 = Transaction.create(player: obj, team: ginos_giants)
