# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

CSV.foreach(Rails.root.join('lib/seed_csv/contestants.csv'), headers: true) do |row|
  Contestant.create( {
    name: row["Name"], 
    image: row["Image"],

  } ) 
end

CSV.foreach(Rails.root.join('lib/seed_csv/topbottoms.csv'), headers: true) do |row|
  Man.create( {
    name: row["Name"], 
    image: row["Image"],

  } ) 
end

File.readlines(Rails.root.join('lib/seed_csv/mostlikelyto.txt')).each do |line|
  Question.create!( {
    content: line.strip
  })
end


