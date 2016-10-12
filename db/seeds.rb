# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
    {name: "Paul Rudd", email: "test1@test.com", password: "test123", password_confirmation: "test123"},
    {name: "Rhonda Rousey", email: "test2@test.com", password: "test123", password_confirmation: "test123"},
    {name: "Donald Trump", email: "test3@test.com", password: "test123", password_confirmation: "test123"},
    {name: "Venus Flytrap Williams", email: "test4@test.com", password: "test123", password_confirmation: "test123"},
    {name: "Jim Carrey", email: "test5@test.com", password: "test123", password_confirmation: "test123"},
    {name: "Taylor Swifty", email: "test6@test.com", password: "test123", password_confirmation: "test123"},
    {name: "Jay-Z", email: "test7@test.com", password: "test123", password_confirmation: "test123"},
    {name: "Steven A Smith", email: "test8@test.com", password: "test123", password_confirmation: "test123"},
    {name: "Oprah", email: "test9@test.com", password: "test123", password_confirmation: "test123"},
    {name: "Whoopie Goldberg", email: "test10@test.com", password: "test123", password_confirmation: "test123"},
    {name: "Charlie Sheen", email: "test11@test.com", password: "test123", password_confirmation: "test123"},
]

users.each do |user| 
    u = User.new(user)
    u.skip_confirmation!
    u.save!
end