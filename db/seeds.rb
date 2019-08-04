# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "user1", password: "glbrcpass", password_confirmation: "glbrcpass")
User.create!(name: "user2", password: "glbrcpass", password_confirmation: "glbrcpass")
User.create!(name: "user3", password: "glbrcpass", password_confirmation: "glbrcpass")

Application.create!(name: "Google", description: "Search Engine", color: "Red",
  default: true, link: "http://www.google.com")
Application.create!(name: "Wisc", description: "UW homepage", color: "Blue",
  default: false, link: "http://www.wisc.edu")
Application.create!(name: "GLBRC", 
  description: "Great Lakes Bioenergy Research Center", color: "Yellow", 
  default: true, link: "http://www.glbrc.org")
Application.create!(name: "WEI", description: "Wisconsin Energy Institute", 
  color: "Green", default: false, link: "https://energy.wisc.edu/")
Application.create!(name: "Twitter", description: "Twitter", color: "Purple",
  default: false, link: "https://twitter.com/")
  

User.all.each do |user|
  int i = 1
  Application.all.each do |app|
    Preference.create(user_id: user.id, application_id: app.id, active: app.default, position: i)
    i=i+1
  end
end