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

u1 = User.create!(username: "lou", first_name: "Lourenco", last_name: "Sequeira", email: "lou@lou.com", password: "password", password_confirmation: "password", sex: "male", phone: "07812345678", location: "Staines", image: "https://www.iconfinder.com/data/icons/avatars-15/64/_Ninja-2-512.png")
u2 = User.create!(username: "tom", first_name: "Tom", last_name: "Higgins", email: "tom@tom.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878123456", location: "Wraysbury", image: "https://pbs.twimg.com/profile_images/417370481076232192/mPeQf4Vs_400x400.jpeg")
u3 = User.create!(username: "tim", first_name: "Tim", last_name: "Mills", email: "tim@tim.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878781234", location: "Guildford", image: "http://www.youmustbetrippin.com/wp-content/uploads/full/iStock_000003537300XSmall.jpg")
u4 = User.create!(username: "tiger", first_name: "Tiger", last_name: "Woods", email: "tiger@tiger.com", password: "password", password_confirmation: "password", sex: "male", phone: "07809857463", location: "Lincoln", image: "http://www.linkslifegolf.com/wp-content/uploads/2016/11/tiger-smile.jpg")
u5 = User.create!(username: "steve", first_name: "Steve", last_name: "Austin", email: "steve@steve.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878789809", location: "Brighton", image: "http://articlebio.com/uploads/bio/2016/01/31/stone-cold-steve-austin.jpg")
u6 = User.create!(username: "bret", first_name: "Bret", last_name: "Hart", email: "bret@bret.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878788734", location: "Reading", image: "http://i17.photobucket.com/albums/b98/daveman32787/l_d5ac25ce9c54131e4a2b4fa81ed9fa02.jpg")
u7 = User.create!(username: "brad", first_name: "Brad", last_name: "Pitt", email: "brad@brad.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878786574", location: "Kensington", image: "http://www.tusfamosos.com/i/brad-pitt-basterds.jpg")
u8 = User.create!(username: "roy", first_name: "Roy", last_name: "Khan", email: "roy@roy.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878782354", location: "Kendal, Lake District", image: "https://www.metal-archives.com/images/6/6/0/0/6600_artist.jpg?4851")
u9 = User.create!(username: "ron", first_name: "Ronnie", last_name: "James Dio", email: "ron@ron.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878657493", location: "Plymouth", image: "https://s-media-cache-ak0.pinimg.com/originals/7e/d1/c0/7ed1c0130ea11fc56ebb91e88a0aa806.jpg")
u10 = User.create!(username: "ritchie", first_name: "Ritchie", last_name: "Blackmore", email: "ritchie@ritchie.com", password: "password", password_confirmation: "password", sex: "male", phone: "07874650499", location: "Staines", image: "http://metaltalk.net/images8/ritchie-blackmore2.jpg")
u11 = User.create!(username: "mike", first_name: "Mike", last_name: "Portnoy", email: "mike@mike.com", password: "password", password_confirmation: "password", sex: "male", phone: "07874657600", location: "Manchester", image: "http://cdn-x.drummerworld.com/drummerworld/mikeportnoy450.jpg")
u12 = User.create!(username: "alexi", first_name: "Alexi", last_name: "Laiho", email: "alexi@alexi.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878746574", location: "Helsinki, Finland", image: "http://www.metalinjection.net/wp-content/uploads/2012/07/ChildrenOfBodom-AlexiLaiho-promo.jpeg")
u13 = User.create!(username: "tim2", first_name: "Tim", last_name: "Sylvia", email: "tim2@tim2.com", password: "password", password_confirmation: "password", sex: "male", phone: "07856689488", location: "Bournemouth", image: "https://cdn.vox-cdn.com/thumbor/2wUNqhIHg2cRevg6zVkaEouBZx4=/0x31:731x518/352x235/cdn.vox-cdn.com/assets/1307272/tim_sylvia.jpg")
u14 = User.create!(username: "alex", first_name: "Alex", last_name: "Jones", email: "alex@alex.com", password: "password", password_confirmation: "password", sex: "male", phone: "07877891144", location: "Maidenhead", image: "http://creationoutreach.com/sitebuildercontent/sitebuilderpictures/alexjones.jpg")
u15 = User.create!(username: "will", first_name: "Will", last_name: "Smith", email: "will@will.com", password: "password", password_confirmation: "password", sex: "male", phone: "07865125432", location: "Bel Air, Los Angeles", image: "https://typeset-beta.imgix.net/rehost%2F2016%2F9%2F14%2Ff14d8746-8832-464d-8730-b77e081bf846.jpeg")




g1 = Group.create!(name: "Tom's Stag Do", description: "Tom's going to be having his stag do over the weekend from 16th to 18th June 2017.

We're going to go away camping on Friday night and go hiking and canoeing the next day until the afternoon. We'll then enjoy the night out in town and get back to camp.

We'll head over to the next town where we'll stop for lunch at a pub.

See the agenda below for more details. Make sure you indicate whether you'll be there or not.", image: "https://a248.e.akamai.net/secure.meetupstatic.com/photos/event/9/a/7/6/600_459099542.jpeg", creator_id: u1.id)

g2 = Group.create!(name: "Brad's Stag Do", description: "Brad's going to be having his stag do over the weekend from 24th to 25th June 2017.

We'll be meeting up in London on Saturday the 24th for a pub crawl. See the agenda for the list of pubs we're going to be getting hammered at.

I've sorted out accomodation at the Premier Inn. Check the agenda for the cost and location.

We'll be going to a shooting range in the morning followed by lunch at a restaurant.

We'll then do another pub crawl, visit a strip club, and continue with the pub crawl.

See the agenda below for more details.", image: "http://www.henorstag.com/getattachment/Stag-Do/Locations/Stag-Party-Ireland/Stag-Do-Ideas-Mayo/Stag-Do-Ideas-Westport/Stag-Do-Westport/westport-stag-do.jpg.aspx", creator_id: u6.id)

g3 = Group.create!(name: "Alexi's Stag Do", description: "Alexi's going to be having his stag do over the weekend from 24th to 25th June 2017.

We'll be meeting up in Bristol on Saturday 1st July.

We'll be doing a pub crawl dressed as world leaders. Alexi will be dressed as our Dear Leader.

See the agenda below to see the pubs we'll be visiting.", image: "http://frontporchdenver.com/wp-content/uploads/sites/2/2015/04/beer-2-e1429569011675.jpg", creator_id: u11.id)


r1 = Request.create!(group_id: g1.id, sender_id: u1.id, receiver_id: u2.id, status: "accepted")
r2 = Request.create!(group_id: g1.id, sender_id: u1.id, receiver_id: u3.id, status: "accepted")
r3 = Request.create!(group_id: g1.id, sender_id: u1.id, receiver_id: u4.id, status: "pending")
r4 = Request.create!(group_id: g1.id, sender_id: u1.id, receiver_id: u5.id, status: "pending")
r5 = Request.create!(group_id: g2.id, sender_id: u6.id, receiver_id: u7.id, status: "accepted")
r6 = Request.create!(group_id: g2.id, sender_id: u6.id, receiver_id: u8.id, status: "accepted")
r7 = Request.create!(group_id: g2.id, sender_id: u6.id, receiver_id: u9.id, status: "pending")
r8 = Request.create!(group_id: g2.id, sender_id: u6.id, receiver_id: u10.id, status: "pending")
r9 = Request.create!(group_id: g2.id, sender_id: u6.id, receiver_id: u1.id, status: "accepted")
r10 = Request.create!(group_id: g3.id, sender_id: u11.id, receiver_id: u12.id, status: "pending")
r11 = Request.create!(group_id: g3.id, sender_id: u11.id, receiver_id: u13.id, status: "pending")
r12 = Request.create!(group_id: g3.id, sender_id: u11.id, receiver_id: u14.id, status: "accepted")
r13 = Request.create!(group_id: g3.id, sender_id: u11.id, receiver_id: u15.id, status: "accepted")
r14 = Request.create!(group_id: g3.id, sender_id: u11.id, receiver_id: u1.id, status: "pending")
