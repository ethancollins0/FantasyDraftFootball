# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
User.destroy_all
Team.destroy_all

bob = User.create(name: 'bob')

broncos = Team.create(name: "Broncos", user_id: bob.id)

player1 = Player.create(name: "player1", team_id: broncos.id)
player2 = Player.create(name: "player2", team_id: broncos.id)

byebug