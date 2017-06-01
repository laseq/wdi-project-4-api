# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Request.destroy_all
User.destroy_all
Group.destroy_all

u1 = User.create!(username: "lou", first_name: "Lourenco", last_name: "Sequeira", email: "lou@lou.com", password: "password", password_confirmation: "password")
u2 = User.create!(username: "tom", first_name: "Tom", last_name: "Holme", email: "tom@tom.com", password: "password", password_confirmation: "password")
u3 = User.create!(username: "tim", first_name: "Tim", last_name: "Mills", email: "tim@tim.com", password: "password", password_confirmation: "password")

g1 = Group.create!(name: "Our Group", description: "This is our amazing group", creator_id: u1.id)

# u1.requests.create!(group_id: g1.id, sender_id: u1.id, receiver_id: u2.id)
# u1.requests.create!(group_id: g1.id, sender_id: u1.id, receiver_id: u3.id)

r1 = Request.create!(group_id: g1.id, sender_id: u1.id, receiver_id: u2.id)
r2 = Request.create!(group_id: g1.id, sender_id: u1.id, receiver_id: u3.id)
