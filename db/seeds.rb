# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# gino = User.create(username: "Eugene",password_digest: "Turtles")
# pep = User.create(username: "Natalie",password_digest: "Patriots")
# bobby = User.create(username: "Bobby", password_digest: "Apples")
# marco = User.create(username: "Marco", password_digest: "Broncos")
# jen = User.create(username: "Jen", password_digest: "Password")
#
#
# league1 = League.create(name: "The League", owner: pep)
#
# ginos_giants = Team.create(name: "Ginos Giants", user: gino, league: league1)
# peppy_pats = Team.create(name: "Peppy Pats", user: pep, league: league1)
#
Player.create(name: "Tom Brady", position: "QB")
Player.create(name: "Aaron Rogers", position: "QB")
Player.create(name: "Odell Beckham Jr.", position: "WR")
Player.create(name: "Adrian Peterson", position: "RB")
Player.create(name: "Evan Engram", position: "TE")
Player.create(name: "Darren Sproles", position: "F")
Player.create(name: "Sebastian Janikowski", position: "K")
Player.create(name: "Jamal Charles", position: "RB")
Player.create(name: "Julio Jones", position: "WR")
Player.create(name: "Jimmy Graham", position: "TE")
#
# draft1 = Draft.create(draft_time: Time.now, league: league1)
#
# transaction1 = Transaction.create(player: brady, team: peppy_pats, draft: draft1)
# transaction2 = Transaction.create(player: aaron, team: ginos_giants, draft: draft1)
# transaction3 = Transaction.create(player: obj, team: ginos_giants, draft: draft1)
