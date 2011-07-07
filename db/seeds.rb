# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    
Post.delete_all

Post.create :title => 'Water', :text => 'Water is super important.  Make sure you are drinking enough each day!' 
Post.create :title => 'Protein?', :text => 'Do you ever wonder whether you are getting enough or the appropriate type of protein?  According to the USDA, we should be eating 30 grams of protein each day.' 