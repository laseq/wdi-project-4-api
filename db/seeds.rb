# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
Request.destroy_all
User.destroy_all
Group.destroy_all

u = []

u[0] = User.create!(username: "lou", first_name: "Lourenco", last_name: "Sequeira", email: "lou@lou.com", password: "password", password_confirmation: "password", sex: "male", phone: "07812345678", location: "Staines, Surrey", image: "https://www.iconfinder.com/data/icons/avatars-15/64/_Ninja-2-512.png")
u[1] = User.create!(username: "conor", first_name: "Conor", last_name: "McGregor", email: "conor@conor.com", password: "password", password_confirmation: "password", sex: "male", phone: "07885060967", location: "Dublin", image: "https://s-media-cache-ak0.pinimg.com/originals/ed/de/fb/eddefbe5c02744b25270bae5f426ca17.jpg")
u[2] = User.create!(username: "tom", first_name: "Tom", last_name: "Higgins", email: "tom@tom.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878123456", location: "Wraysbury", image: "https://pbs.twimg.com/profile_images/417370481076232192/mPeQf4Vs_400x400.jpeg")
u[3] = User.create!(username: "max", first_name: "Max", last_name: "Kartuzov", email: "max@max.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878781234", location: "East London", image: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAvYAAAAJDk5MDE0OGM4LWI3YjAtNDA1Zi04MjcxLWM5ZTU1MTNkNGM5NQ.jpg")
u[4] = User.create!(username: "tiger", first_name: "Tiger", last_name: "Woods", email: "tiger@tiger.com", password: "password", password_confirmation: "password", sex: "male", phone: "07809857463", location: "Lincoln", image: "http://www.linkslifegolf.com/wp-content/uploads/2016/11/tiger-smile.jpg")
u[5] = User.create!(username: "steve", first_name: "Steve", last_name: "Austin", email: "steve@steve.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878789809", location: "Brighton", image: "http://articlebio.com/uploads/bio/2016/01/31/stone-cold-steve-austin.jpg")
u[6] = User.create!(username: "bret", first_name: "Bret", last_name: "Hart", email: "bret@bret.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878788734", location: "Reading", image: "http://i17.photobucket.com/albums/b98/daveman32787/l_d5ac25ce9c54131e4a2b4fa81ed9fa02.jpg")
u[7] = User.create!(username: "brad", first_name: "Brad", last_name: "Pitt", email: "brad@brad.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878786574", location: "Kensington", image: "http://www.tusfamosos.com/i/brad-pitt-basterds.jpg")
u[8] = User.create!(username: "roy", first_name: "Roy", last_name: "Khan", email: "roy@roy.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878782354", location: "Kendal, Lake District", image: "https://www.metal-archives.com/images/6/6/0/0/6600_artist.jpg?4851")
u[9] = User.create!(username: "ron", first_name: "Ronnie", last_name: "James Dio", email: "ron@ron.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878657493", location: "Plymouth", image: "https://s-media-cache-ak0.pinimg.com/originals/7e/d1/c0/7ed1c0130ea11fc56ebb91e88a0aa806.jpg")
u[10] = User.create!(username: "ritchie", first_name: "Ritchie", last_name: "Blackmore", email: "ritchie@ritchie.com", password: "password", password_confirmation: "password", sex: "male", phone: "07874650499", location: "Staines", image: "http://metaltalk.net/images8/ritchie-blackmore2.jpg")
u[11] = User.create!(username: "mike", first_name: "Mike", last_name: "Portnoy", email: "mike@mike.com", password: "password", password_confirmation: "password", sex: "male", phone: "07874657600", location: "Manchester", image: "http://cdn-x.drummerworld.com/drummerworld/mikeportnoy450.jpg")
u[12] = User.create!(username: "alexi", first_name: "Alexi", last_name: "Laiho", email: "alexi@alexi.com", password: "password", password_confirmation: "password", sex: "male", phone: "07878746574", location: "Helsinki, Finland", image: "http://www.metalinjection.net/wp-content/uploads/2012/07/ChildrenOfBodom-AlexiLaiho-promo.jpeg")
u[13] = User.create!(username: "tim2", first_name: "Tim", last_name: "Sylvia", email: "tim2@tim2.com", password: "password", password_confirmation: "password", sex: "male", phone: "07856689488", location: "Bournemouth", image: "https://cdn.vox-cdn.com/thumbor/2wUNqhIHg2cRevg6zVkaEouBZx4=/0x31:731x518/352x235/cdn.vox-cdn.com/assets/1307272/tim_sylvia.jpg")
u[14] = User.create!(username: "alex", first_name: "Alex", last_name: "Jones", email: "alex@alex.com", password: "password", password_confirmation: "password", sex: "male", phone: "07877891144", location: "Maidenhead", image: "http://creationoutreach.com/sitebuildercontent/sitebuilderpictures/alexjones.jpg")
u[15] = User.create!(username: "will", first_name: "Will", last_name: "Smith", email: "will@will.com", password: "password", password_confirmation: "password", sex: "male", phone: "07865125432", location: "Bel Air, Los Angeles", image: "https://typeset-beta.imgix.net/rehost%2F2016%2F9%2F14%2Ff14d8746-8832-464d-8730-b77e081bf846.jpeg")
u[16] = User.create!(username: "leo", first_name: "Leonardo", last_name: "DiCaprio", email: "leo@leo.com", password: "password", password_confirmation: "password", sex: "male", phone: "07865909432", location: "St Ives, Cornwall", image: "http://pixel.nymag.com/imgs/daily/vulture/2015/11/12/12-leonardo-dicaprio.w529.h529.jpg")
u[17] = User.create!(username: "chris", first_name: "Christian", last_name: "Bale", email: "chris@chris.com", password: "password", password_confirmation: "password", sex: "male", phone: "07885065432", location: "Manchester", image: "http://assets-s3.usmagazine.com/uploads/assets/articles/54548-christian-bale-visits-dark-knight-rises-shooting-victims-in-aurora-colorado/1343166491_christian-467.jpg")
u[18] = User.create!(username: "al", first_name: "Al", last_name: "Pacino", email: "al@al.com", password: "password", password_confirmation: "password", sex: "male", phone: "07896815432", location: "Canterbury", image: "https://s-media-cache-ak0.pinimg.com/originals/9e/89/d9/9e89d928b8d2d0edef485b245f1c9552.jpg")
u[19] = User.create!(username: "clint", first_name: "Clint", last_name: "Eastwood", email: "clint@clint.com", password: "password", password_confirmation: "password", sex: "male", phone: "07889012432", location: "Exeter", image: "http://d2vrsup6vl2y4n.cloudfront.net/wp-content/uploads/2016/06/photo-267394.jpg")
u[20] = User.create!(username: "tony", first_name: "Tony", last_name: "Kakko", email: "tony@tony.com", password: "password", password_confirmation: "password", sex: "male", phone: "07809654632", location: "Leeds", image: "https://s-media-cache-ak0.pinimg.com/originals/bf/7e/dc/bf7edc6662b87c1fd62e87e2c658687d.jpg")
u[21] = User.create!(username: "joe", first_name: "Joakim", last_name: "Broden", email: "joe@joe.com", password: "password", password_confirmation: "password", sex: "male", phone: "07885569432", location: "Stockholm", image: "http://static1.fjcdn.com/comments/Tank+intensifies+_4f125d2918753b316cd5dd4972e6a568.jpg")
u[22] = User.create!(username: "elon", first_name: "Elon", last_name: "Musk", email: "elon@elon.com", password: "password", password_confirmation: "password", sex: "male", phone: "07885065432", location: "Stockholm", image: "https://pbs.twimg.com/profile_images/782474226020200448/zDo-gAo0_400x400.jpg")



u24 = User.create!(username: "keira", first_name: "Keira", last_name: "Knightley", email: "keira@keira.com", password: "password", password_confirmation: "password", sex: "female", phone: "07885875091", location: "West London", image: "https://static01.nyt.com/images/2015/10/25/arts/25KEIRAJP1/25KEIRAJP1-blog427.jpg")
u25 = User.create!(username: "tarja", first_name: "Tarja", last_name: "Turunen", email: "tarja@tarja.com", password: "password", password_confirmation: "password", sex: "female", phone: "07000060967", location: "Helsinki", image: "https://s-media-cache-ak0.pinimg.com/originals/9b/a7/a0/9ba7a0e2088048b1fbe212537833580a.jpg")
u26 = User.create!(username: "angela", first_name: "Angela", last_name: "Gossow", email: "angela@angela.com", password: "password", password_confirmation: "password", sex: "female", phone: "07880909767", location: "Guildford", image: "https://www.metal-archives.com/images/1/9/9/2/1992_artist.jpg?0046")
u27 = User.create!(username: "floor", first_name: "Floor", last_name: "Jansen", email: "floor@floor.com", password: "password", password_confirmation: "password", sex: "female", phone: "07845647967", location: "Coventry", image: "http://scontent.cdninstagram.com/t51.2885-15/s480x480/e35/c34.0.623.623/13269452_1198269336859975_1130369382_n.jpg?ig_cache_key=MTI2NDM2NzM1NTg3MTA5MTc3NA%3D%3D.2.c")
u28 = User.create!(username: "julia", first_name: "Julia", last_name: "Roberts", email: "julia@julia.com", password: "password", password_confirmation: "password", sex: "female", phone: "07800860967", location: "Liverpool", image: "http://cdn-img.instyle.com/sites/default/files/styles/684xflex/public/styles/594xflex/public/images/2015/04/040615-julia-roberts-sag-2015_0.jpg?itok=sGKwra1C")
u29 = User.create!(username: "sarah", first_name: "Sarah", last_name: "Callies", email: "sarah@sarah.com", password: "password", password_confirmation: "password", sex: "female", phone: "07801110967", location: "Newcastle", image: "http://www.everyjoe.com/wp-content/uploads/2008/08/sarah-wayne-callies-sara-tancredi-prison-break-season-4.jpg")
u30 = User.create!(username: "uma", first_name: "Uma", last_name: "Thurman", email: "uma@uma.com", password: "password", password_confirmation: "password", sex: "female", phone: "07822260967", location: "Norwich", image: "https://s-media-cache-ak0.pinimg.com/736x/ee/2a/37/ee2a3710cc9aedbd1e030137e24a1e8b.jpg")


g = []

g[0] = Group.create!(name: "Max's Stag Do", description: "Max is going to be having his stag do over the weekend from Friday 7th to Sunday 9th July 2017.

We're going to go away camping on Friday night and go hiking and canoeing the next day until the afternoon. We'll then enjoy the night out in town and get back to camp.

We'll head over to the next town where we'll stop for lunch at a pub.

See the agenda below for more details. Make sure you indicate whether you'll be there or not.", image: "https://a248.e.akamai.net/secure.meetupstatic.com/photos/event/9/a/7/6/600_459099542.jpeg", banner: "../images/flag-russia.jpg", creator_id: u[0].id)

g1e = []

g1e[0] = g[0].events.create!(name: "Campfire evening", description: "We'll meet up at the campsite, pitch our tents and make merry around the campfire. Make sure you bring plenty of food and drink.", location: "Thornthwaite, Keswick, Cumbria CA12 5RZ", dress_code: "Warm outdoor clothes", start_time: Time.local(2017, 7, 7, 19, 0), end_time: Time.local(2017, 7, 8, 0, 0))
g1e[1] = g[0].events.create!(name: "Sleep", description: "We need to get to sleep by midnight if we want to get stuff done tomorrow.", location: "Thornthwaite, Keswick, Cumbria CA12 5RZ", dress_code: "Whatever you sleep in", start_time: Time.local(2017, 7, 8, 0, 0), end_time: Time.local(2017, 7, 8, 8, 0))
g1e[2] = g[0].events.create!(name: "Breakfast", description: "A campfire breakfast. Make sure you bring enough food for breakfast.", location: "Thornthwaite, Keswick, Cumbria CA12 5RZ", dress_code: "Warm outdoor clothes", start_time: Time.local(2017, 7, 8, 8, 0), end_time: Time.local(2017, 7, 8, 9, 30))
g1e[3] = g[0].events.create!(name: "Hiking to the canoe site", description: "The canoe site in on lake Windermere and will be about an hours walk through the hills", location: "Thornthwaite, Keswick, Cumbria CA12 5RZ", dress_code: "Warm outdoor clothes", start_time: Time.local(2017, 7, 8, 10, 30), end_time: Time.local(2017, 7, 8, 11, 30))
g1e[4] = g[0].events.create!(name: "Canoeing", description: "Canoeing at Brockhole on Windermere. Their website is http://www.brockhole.co.uk/ if you want to check it out.", location: "Brockhole on Windermere, Windermere, Cumbria LA23 1LJ", dress_code: "Something you don't mind getting wet", start_time: Time.local(2017, 7, 8, 11, 30), end_time: Time.local(2017, 7, 8, 13, 30))
g1e[5] = g[0].events.create!(name: "Lunch", description: "There's a pub nearby where we'll have lunch at.", location: "Brockhole on Windermere, Windermere, Cumbria LA23 1LJ", dress_code: "Warm outdoor clothes", start_time: Time.local(2017, 7, 8, 13, 30), end_time: Time.local(2017, 7, 8, 14, 30))
g1e[6] = g[0].events.create!(name: "Archery", description: "There's an archery range nearby which I've booked and it will be super fun. Max will have an apple on his head and we need to shoot it off.", location: "Brockhole on Windermere, Windermere, Cumbria LA23 1LJ", dress_code: "Warm outdoor clothes", start_time: Time.local(2017, 7, 8, 15, 00), end_time: Time.local(2017, 7, 8, 18, 00))
g1e[7] = g[0].events.create!(name: "Drinking in town", description: "There are some pubs nearby where we'll drink at get merry at. Max will be drowning in Vodka.", location: "Brockhole on Windermere, Windermere, Cumbria LA23 1LJ", dress_code: "Anything", start_time: Time.local(2017, 7, 8, 18, 00), end_time: Time.local(2017, 7, 8, 23, 00))
g1e[8] = g[0].events.create!(name: "Travel back to camp", description: "We'll walk back to camp in the dark. Hopefully some of us will be sober enough to navigate our way back.", location: "Windermere, Cumbria LA23 1LJ", dress_code: "Warm outdoor clothes", start_time: Time.local(2017, 7, 8, 23, 00), end_time: Time.local(2017, 7, 9, 1, 00))
g1e[9] = g[0].events.create!(name: "Sleep", description: "If all goes well we should be back at camp at 1 am to get some sleep.", location: "Thornthwaite, Keswick, Cumbria CA12 5RZ", dress_code: "Whatever", start_time: Time.local(2017, 7, 9, 1, 30), end_time: Time.local(2017, 7, 9, 9, 00))
g1e[10] = g[0].events.create!(name: "Clear up camp", description: "What goes up must come down.", location: "Thornthwaite, Keswick, Cumbria CA12 5RZ", dress_code: "Warm outdoor clothes", start_time: Time.local(2017, 7, 9, 9, 00), end_time: Time.local(2017, 7, 9, 9, 45))
g1e[11] = g[0].events.create!(name: "Breakfast", description: "We'll drive to the nearby town and get some breakfast.", location: "Keswick, Cumbria CA12 5RZ", dress_code: "Warm outdoor clothes", start_time: Time.local(2017, 7, 9, 9, 45), end_time: Time.local(2017, 7, 9, 10, 45))
g1e[12] = g[0].events.create!(name: "Paintballing", description: "We'll go paintballing in the nearby town. Max finally has the opportunity to show off his Spetznaz skills.", location: "Keswick, Cumbria CA12 5RZ", dress_code: "Something you don't mind getting dirty", start_time: Time.local(2017, 7, 9, 11, 00), end_time: Time.local(2017, 7, 9, 13, 00))
g1e[13] = g[0].events.create!(name: "The last supper", description: "We'll head over to a local pub after paintballing and unwind with some lunch where we'll get to bid our farewells.", location: "Keswick, Cumbria CA12 5RZ", dress_code: "Anything", start_time: Time.local(2017, 7, 9, 13, 00), end_time: Time.local(2017, 7, 9, 15, 00))


g[1] = Group.create!(name: "Leonardo's Stag Do", description: "Leonardo's going to be having his stag do over the Saturday 5th August weekend.

We'll be meeting up in London on Saturday evening. See the agenda for the list of pubs we're going to be getting hammered at.

We'll be going to a shooting range in the morning followed by lunch at a restaurant.

See the agenda below for more details.", image: "http://www.henorstag.com/getattachment/Stag-Do/Locations/Stag-Party-Ireland/Stag-Do-Ideas-Mayo/Stag-Do-Ideas-Westport/Stag-Do-Westport/westport-stag-do.jpg.aspx", creator_id: u[14].id)

g[1].events.create!(name: "Pub crawl", description: "We'll start the evening with a pub crawl at the Lion's Head pub", location: "The Lion's Head, Chelsea", dress_code: "Casual", start_time: Time.local(2017, 8, 5, 19, 00), end_time: Time.local(2017, 8, 5, 20, 00))
g[1].events.create!(name: "Continuation of the pub crawl", description: "We'll move on to the next pub The King's Throne", location: "The King's Throne, Kensington", dress_code: "Casual", start_time: Time.local(2017, 8, 5, 20, 00), end_time: Time.local(2017, 8, 5, 21, 00))
g[1].events.create!(name: "Next pub", description: "The next pub shall be The Goat's Beard", location: "The Goat's Beard, Kensington", dress_code: "Casual", start_time: Time.local(2017, 8, 5,  21, 00), end_time: Time.local(2017, 8, 5, 22, 00))
g[1].events.create!(name: "Next stop", description: "The next pub shall be The Goat's Beard", location: "The Tavern, Soho", dress_code: "Casual", start_time: Time.local(2017, 8, 5,  22, 00), end_time: Time.local(2017, 8, 5, 23, 00))
g[1].events.create!(name: "Strip club", description: "We shall have a happy ending at the strip club.", location: "The Gentleman's club, Soho", dress_code: "Casual", start_time: Time.local(2017, 8, 5, 23, 00), end_time: Time.local(2017, 8, 6, 1, 00))
g[1].events.create!(name: "Clay shooting", description: "Leonardo likes guns so I booked a shooting range for us.", location: "West London Shooters, Kingston", dress_code: "Casual", start_time: Time.local(2017, 8, 6, 10, 00), end_time: Time.local(2017, 8, 6, 12, 30))
g[1].events.create!(name: "Lunch", description: "We'll end the stag party with lunch at a nearby restaurant.", location: "The Harvester, Kingston", dress_code: "Casual", start_time: Time.local(2017, 8, 6, 13, 00), end_time: Time.local(2017, 8, 6, 14, 30))


g[2] = Group.create!(name: "Alexi's Stag Do", description: "Alexi's going to be having his stag do over the weekend from 24th to 25th June 2017.

We'll be meeting up in Bristol on Saturday 1st July.

We'll be doing a pub crawl dressed as world leaders. Alexi will be dressed as our Dear Leader.

See the agenda below to see the pubs we'll be visiting.", image: "http://frontporchdenver.com/wp-content/uploads/sites/2/2015/04/beer-2-e1429569011675.jpg", creator_id: u[10].id)

r = []

# r[0] = Request.create!(group_id: g[0].id, sender_id: u[0].id, receiver_id: u[1].id, status: "accepted")
# r[1] = Request.create!(group_id: g[0].id, sender_id: u[0].id, receiver_id: u[2].id, status: "accepted")
# r[2] = Request.create!(group_id: g[0].id, sender_id: u[0].id, receiver_id: u[3].id, status: "pending")
# r[3] = Request.create!(group_id: g[0].id, sender_id: u[0].id, receiver_id: u[4].id, status: "pending")
# r[4] = Request.create!(group_id: g[1].id, sender_id: u[5].id, receiver_id: u[6].id, status: "accepted")
# r[5] = Request.create!(group_id: g[1].id, sender_id: u[5].id, receiver_id: u[7].id, status: "accepted")
# r[6] = Request.create!(group_id: g[1].id, sender_id: u[5].id, receiver_id: u[8].id, status: "pending")
# r[7] = Request.create!(group_id: g[1].id, sender_id: u[5].id, receiver_id: u[9].id, status: "pending")
# r[8] = Request.create!(group_id: g[1].id, sender_id: u[5].id, receiver_id: u[0].id, status: "accepted")
# r[9] = Request.create!(group_id: g[2].id, sender_id: u[10].id, receiver_id: u[11].id, status: "pending")
# r[10] = Request.create!(group_id: g[2].id, sender_id: u[10].id, receiver_id: u[12].id, status: "pending")
# r[11] = Request.create!(group_id: g[2].id, sender_id: u[10].id, receiver_id: u[13].id, status: "accepted")
# r[12] = Request.create!(group_id: g[2].id, sender_id: u[10].id, receiver_id: u[14].id, status: "accepted")
# r[13] = Request.create!(group_id: g[2].id, sender_id: u[10].id, receiver_id: u[0].id, status: "pending")

for i in 0..15
 r[i] = Request.create!(group_id: g[0].id, sender_id: u[0].id, receiver_id: u[i+1].id, status: "accepted")
end
for i in 16..20
 r[i] = Request.create!(group_id: g[0].id, sender_id: u[0].id, receiver_id: u[i+1].id, status: "pending")
end
for i in 21..25
 r[i] = Request.create!(group_id: g[1].id, sender_id: u[14].id, receiver_id: u[i-6].id, status: "accepted")
end
for i in 26..27
 r[i] = Request.create!(group_id: g[1].id, sender_id: u[14].id, receiver_id: u[i-6].id, status: "pending")
end
r[28] = Request.create!(group_id: g[1].id, sender_id: u[14].id, receiver_id: u[0].id, status: "pending")

# g1e[0]
# g1e[13]
# @current_user.attendance_statuses.new(event_id: params[:id], status: "attending")
for userId in 0..13
  for eventId in 0..13
    u[userId].attendance_statuses.create!(event_id: g1e[eventId].id, status: "attending")
  end
end
for userId in 14..15
  for eventId in 0..1
    u[userId].attendance_statuses.create!(event_id: g1e[eventId].id, status: "not attending")
  end
  for eventId in 2..13
    u[userId].attendance_statuses.create!(event_id: g1e[eventId].id, status: "attending")
  end
end
