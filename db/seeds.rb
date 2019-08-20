# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative './scraper'

Player.destroy_all
User.destroy_all
Team.destroy_all

# quarterbacks = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=QUARTERBACK&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go")
# running_backs = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=RUNNING_BACK&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go")
# wide_recievers = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=WIDE_RECEIVER&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go")
# tight_ends = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=TIGHT_END&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go")
# defensive_linemen = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=DEFENSIVE_LINEMAN&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go")
# linebackers = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=LINEBACKER&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go")
# defensive_backs = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=false&conference=null&statisticPositionCategory=DEFENSIVE_BACK&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go")
# kickoff_kickers = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=KICKOFF_KICKER&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go")
# kick_returners = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=KICK_RETURNER&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go")
punters = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=PUNTER&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go", 1)
punt_returners = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=PUNT_RETURNER&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go", 1)
fg_kickers = scrapeUrl("http://www.nfl.com/stats/categorystats?archive=true&conference=null&statisticPositionCategory=FIELD_GOAL_KICKER&season=2018&seasonType=REG&experience=&tabSeq=1&qualified=true&Submit=Go", 1)

statNames = ['Rk', 'Player', 'Pos', 'Yds', 'TD', 'Int', 'Sck', 'Comb', 'FGM', 'FG Att', 'A-M']

byebug
