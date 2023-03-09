require 'yaml'
require "open-uri"

CONTENTS = ["Looking forward to attending!", "Can't wait to be there!", "Excited to join the event!",
            "I would be happy to participate!", "Count me in, I'm ready to go!"]


# Attendance.delete_all
# Run.delete_all
# User.delete_all


# # Load the YAML file
# data = YAML.load_file("#{Rails.root}/db/seeds/data.yaml")

# # Loop through the users and create each one
# data['users'].each do |user_data|
#   user = User.create!(
#     username: user_data['username'],
#     email: user_data['email'],
#     password: user_data['password'],
#     password_confirmation: user_data['password_confirmation'],
#     first_name: user_data['first_name'],
#     last_name: user_data['last_name']
#   )

#   # If the user has runs, create them too
#   if user_data['runs']
#     user_data['runs'].each do |run_data|
#       # Find or create the run and add it to the runs array
#       user.runs.create!(
#         name: run_data['name'],
#         description: run_data['description'],
#         category: run_data['category'],
#         level: run_data['level'],
#         date: rand(Date.today..(Date.today + 7)),
#         distance: run_data['distance'],
#         max_person: run_data['max_person'],
#         meeting_point: run_data['meeting_point'],
#         circuit: run_data['circuit']
#       )
#     end
#   else
#     # If the user has no runs, find a random run and add them as an attendee
#     run = Run.all.select { |r| r.attendances.count < 2 }.sample
#     if run
#       # Create an attendance instance for the user and the run
#       Attendance.create!(user: user, run: run, status: ["pending", "confirmed", "declined"].sample, content: CONTENTS.sample)
#     end
#   end
# end


Attendance.delete_all
Run.delete_all
User.delete_all

user1 = User.new(
  email: "jean.dupont@gmail.com",
  username: "jean98",
  first_name: "Jean",
  last_name: 'Dupont',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308872/avatars/male20161083782612976_njyoun.jpg")
user1.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user1.save!
puts "created 1 user"

user2 = User.new(
  email: "carine.martin@gmail.com",
  username: "carine",
  first_name: "Carine",
  last_name: 'Martin',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/female2017102608090332_zirt49.jpg")
user2.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user2.save!
puts "created 1 user"

user3 = User.new(
  email: "julien.nguyen@gmail.com",
  username: "julien-n",
  first_name: "Julien",
  last_name: 'Nguyen',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308872/avatars/male108516398969_cfwahr.jpg")
user3.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user3.save!
puts "created 1 user"

user4 = User.new(
  email: "hakim.benaissa@gmail.com",
  username: "hakimbenaissa",
  first_name: "Hakim",
  last_name: 'Benaissa',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/male20151086170387787_gqtdis.jpg")
user4.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user4.save!
puts "created 1 user"

user5 = User.new(
  email: "john.mitchell@gmail.com",
  username: "johnmitchell",
  first_name: "John",
  last_name: 'Mitchell',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/male1085851718597_wwaeyy.jpg")
user5.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user5.save!
puts "created 1 user"

user6 = User.new(
  email: "rolande.cousineau@gmail.com",
  username: "rolande1",
  first_name: "Rolande",
  last_name: 'Cousineau',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/female20141023711279694_ehuphc.jpg")
user6.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user6.save!
puts "created 1 user"

user7 = User.new(
  email: "viviane.mercier@gmail.com",
  username: "vivi88",
  first_name: "Viviane",
  last_name: 'Mercier',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/female102244160852_llqpfb.jpg")
user7.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user7.save!
puts "created 1 user"

user8 = User.new(
  email: "olympe.gagnon@gmail.com",
  username: "olympe-g",
  first_name: "Olympe",
  last_name: 'Gagnon',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/female2008102329451484_uu44mq.jpg")
user8.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user8.save!
puts "created 1 user"

user9 = User.new(
  email: "pietro.colina@gmail.com",
  username: "pietro",
  first_name: "Pietro",
  last_name: 'Colina',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678309114/avatars/male20161086598156006_f9q8sc.jpg")
user9.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user9.save!
puts "created 1 user"

user10 = User.new(
  email: "manuel.costa@gmail.com",
  username: "manueldc",
  first_name: "Manuel",
  last_name: 'Costa',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678309114/avatars/male1084850574768_diql3z.jpg")
user10.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user10.save!
puts "created 1 user"

user11 = User.new(
  email: "manon.paget@gmail.com",
  username: "manonpaget",
  first_name: "Manon",
  last_name: 'Paget',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/female20161025297385742_w5dr4o.jpg")
user11.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user11.save!
puts "created 1 user"

user12 = User.new(
  email: "mathieu.bernard@gmail.com",
  username: "mathieu12",
  first_name: "Mathieu",
  last_name: 'Bernard',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678309189/avatars/male1085919192108_twj0sv.jpg")
user12.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user12.save!
puts "created 1 user"

user13 = User.new(
  email: "renaud.desrosiers@gmail.com",
  username: "renaudrunning",
  first_name: "Renaud",
  last_name: 'Desrosiers',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678309189/avatars/male1085317670196_oeyigj.jpg")
user13.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user13.save!
puts "created 1 user"

user14 = User.new(
  email: "faiza.douadi@gmail.com",
  username: "faizadouadi",
  first_name: "Faiza",
  last_name: 'Douadi',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678309232/avatars/female20141023759961822_n9whzv.jpg")
user14.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user14.save!
puts "created 1 user"

user15 = User.new(
  email: "moussa.diallo@gmail.com",
  username: "moussa",
  first_name: "Moussa",
  last_name: 'Diallo',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/male20161086497879852_pcl4gg.jpg")
user15.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user15.save!
puts "created 1 user"

run1 = Run.new(
  name: "Buttes Chaumont",
  description: "This will be a hilly run in the Parc des Buttes Chaumont. Good level required !",
  category: "Trail Running",
  level: 5,
  distance: 12,
  max_person: 4,
  meeting_point: "5 Place Armand Carrel, 75019 Paris",
  date: DateTime.new(2023,3,18,9),
  user: user1
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311465/places/Parc-des-Buttes-Chaumont-Temple-de-la-sybille-au-sommet-de-li%CC%82le_zal8tt.jpg")
run1.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run1.save!
puts "created 1 run"

run2 = Run.new(
  name: "Le Marais",
  description: "I will make you discover my city, in a - not so easy - run. Come and join us !",
  category: "City Tour",
  level: 3,
  distance: 8,
  max_person: 5,
  meeting_point: "52 Rue de Rivoli, 75004 Paris",
  date: DateTime.new(2023,3,19,9),
  user: user2
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311466/places/rue-marais-paris-france_lrcq9q.jpg")
run2.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run2.save!
puts "created 1 run"

run3 = Run.new(
  name: "Bois de Vincennes",
  description: "Super chill run in the Bois de Vincennes. All levels welcome, we will adapt. Let's run together !",
  category: "Casual",
  level: 2,
  distance: 10,
  max_person: 3,
  meeting_point: "293 Av. Daumesnil, 75012 Paris",
  date: DateTime.new(2023,3,18,10),
  user: user3
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311467/places/boisdevincennes_bm6qib.jpg")
run3.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run3.save!
puts "created 1 run"

run4 = Run.new(
  name: "Montmartre",
  description: "Coaching in the stairs of Montmarte : Ups & Downs, interval training. It'll be tough !",
  category: "Coaching",
  level: 5,
  distance: 15,
  max_person: 4,
  meeting_point: "35 Rue du Chevalier de la Barre, 75018 Paris",
  date: DateTime.new(2023,3,19,9),
  user: user4
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311465/places/montmartre_mnpj1x.jpg")
run4.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run4.save!
puts "created 1 run"

run5 = Run.new(
  name: "Parc Monceau",
  description: "Simple run in Parc Monceau. Nothing really hard, all levels welcome. Let's go !!!",
  category: "Casual",
  level: 2,
  distance: 7,
  max_person: 3,
  meeting_point: "35 Bd de Courcelles, 75008 Paris",
  date: DateTime.new(2023,3,18,17),
  user: user5
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311466/places/monceau_zbn2nx.jpg")
run5.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run5.save!
puts "created 1 run"

run6 = Run.new(
  name: "Canal Saint-Martin",
  description: "Super casual run along Canal Saint-Martin. We will go slow and chat.",
  category: "Casual",
  level: 1,
  distance: 5,
  max_person: 5,
  meeting_point: "14 Rue des Récollets, 75010 Paris",
  date: DateTime.new(2023,3,19,9),
  user: user6
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311466/places/canal_d356gt.jpg")
run6.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run6.save!
puts "created 1 run"

run7 = Run.new(
  name: "Quais de Seine",
  description: "We will run along the Quais de Seine, go past Musée d'Orsay, Tour Eiffel, la Concorde, les Tuileries. Let's run slow and enjoy the view !",
  category: "City Tour",
  level: 3,
  distance: 10,
  max_person: 6,
  meeting_point: "Quai Anatole France, 75007 Paris",
  date: DateTime.new(2023,3,18,16),
  user: user7
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311466/places/quais-de-seine-2_3_120831-159179224480832_osre3x.jpg")
run7.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run7.save!
puts "created 1 run"

run8 = Run.new(
  name: "Fourvières",
  description: "Tough session in the hills and stairs of Fourvières. We will sweat, but the view up there is worth the effort !",
  category: "Trail Running",
  level: 5,
  distance: 15,
  max_person: 5,
  meeting_point: "4 Av. Adolphe Max, 69005 Lyon",
  date: DateTime.new(2023,3,19,9),
  user: user8
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311466/places/fourviere-5-1024x597_vpvjsk.png")
run8.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run8.save!
puts "created 1 run"

run9 = Run.new(
  name: "Parc de la Tête d'Or",
  description: "Fast run in the Parc de la Tête d'Or. Be prepared to run pretty fast, it will not be so easy. ",
  category: "Running",
  level: 4,
  distance: 12,
  max_person: 4,
  meeting_point: "55 Boulevard des Belges, 69006 Lyon",
  date: DateTime.new(2023,3,18,8),
  user: user9
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311465/places/parc-tete-or-lyon_bqdbxj.jpg")
run9.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run9.save!
puts "created 1 run"

run10 = Run.new(
  name: "Quais du Rhône",
  description: "Slow and cool run along Quais du Rhône up to Confluence. I run slow, don't worry. ",
  category: "Casual",
  level: 1,
  distance: 8,
  max_person: 3,
  meeting_point: "15 Quai Claude Bernard, 69007 Lyon",
  date: DateTime.new(2023,3,19,9),
  user: user10
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311465/places/rhone_pn23cx.jpg")
run10.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run10.save!
puts "created 1 run"

run11 = Run.new(
  name: "Lyon Centre",
  description: "Fast paced run around Place Bellecour and Vieux Lyon. Be prepared to sweat a little. ",
  category: "City Tour",
  level: 4,
  distance: 10,
  max_person: 4,
  meeting_point: "Place Bellecour, 69002 Lyon",
  date: DateTime.new(2023,3,18,10),
  user: user11
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311465/places/lyon-place-bellecour_wrt5hd.jpg")
run11.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run11.save!
puts "created 1 run"

run12 = Run.new(
  name: "Les Calanques",
  description: "Sporty hike in the Calanques of Marseille. Amazing scenery, breathtaking landscapes.",
  category: "Hiking",
  level: 5,
  distance: 12,
  max_person: 4,
  meeting_point: "12 Bd Alexandre Delabre, 13008 Marseille",
  date: DateTime.new(2023,3,19,9),
  user: user12
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311465/places/800px-Calanque_de_Sormiou_dncmqb.jpg")
run12.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run12.save!
puts "created 1 run"

run13 = Run.new(
  name: "Le Vieux Port",
  description: "Cool run in the heart of Marseille, around Vieux Port, le Panier... let's grab a coffee afterwards ! ",
  category: "City Tour",
  level: 3,
  distance: 7,
  max_person: 6,
  meeting_point: "174 Quai du Port, 13002 Marseille",
  date: DateTime.new(2023,3,18,14),
  user: user13
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311466/places/mucem-fort-saint-jean-vieux-porte-lamyomtcm-taille-reduite-1920x960_yi067i.jpg")
run13.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run13.save!
puts "created 1 run"

run14 = Run.new(
  name: "La Corniche",
  description: "Chat and run on La Corniche in Marseille. Come join me for some beautiful views and a good time running",
  category: "Casual",
  level: 2,
  distance: 14,
  max_person: 5,
  meeting_point: "58 Boulevard Charles Livon, 13007 Marseille",
  date: DateTime.new(2023,3,19,9),
  user: user14
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311466/places/corniche-kennedy-marseille_zgiy29.jpg")
run14.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run14.save!
puts "created 1 run"

run15 = Run.new(
  name: "Parc Borely",
  description: "Fast paced run in Parc Borely. Some interval training if you're motivated, and a beer after that !",
  category: "Running",
  level: 4,
  distance: 8,
  max_person: 5,
  meeting_point: "Avenue du Parc Borély, 13008 Marseille",
  date: DateTime.new(2023,3,18,19),
  user: user15
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678311467/places/Marseille-Cha%CC%82teau_Bore%CC%81ly_2_ngkrrz.jpg")
run15.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run15.save!
puts "created 1 run"

user16 = User.new(
  email: "paul.robert@gmail.com",
  username: "paulo",
  first_name: "Paul",
  last_name: 'Robert',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678313036/male20161086421672211_ua0oed.jpg")
user16.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user16.save!
puts "created 1 user"

user17 = User.new(
  email: "stephane.dubois@gmail.com",
  username: "steph12",
  first_name: "Stéphane",
  last_name: 'Dubois',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678313036/male20161086572948303_uum979.jpg")
user17.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user17.save!
puts "created 1 user"

user18 = User.new(
  email: "alice.pommard@gmail.com",
  username: "alicep",
  first_name: "Alice",
  last_name: 'Pommard',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678313036/female20171026239950775_b0zify.jpg")
user18.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user18.save!
puts "created 1 user"

user19 = User.new(
  email: "marie.tran@gmail.com",
  username: "marie98",
  first_name: "Marie",
  last_name: 'Tran',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678313036/female2009102336737964_yf9pzz.jpg")
user19.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user19.save!
puts "created 1 user"

user20 = User.new(
  email: "lucie.blanc@gmail.com",
  username: "lucieblanc",
  first_name: "Lucie",
  last_name: 'Blanc',
  password: "topsecret",
  password_confirmation: "topsecret"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678313036/female20151024206432526_jndds8.jpg")
user20.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user20.save!
puts "created 1 user"

attendance1 = Attendance.new(
  content: "Looking forward to attending!",
  user: user16,
  run: run1
)
attendance1.save!
puts "created 1 attendance"

attendance2 = Attendance.new(
  content: "Can't wait to be there!",
  user: user17,
  run: run1
)
attendance2.save!
puts "created 1 attendance"

attendance3 = Attendance.new(
  content: "Excited to join !",
  user: user18,
  run: run12
)
attendance3.save!
puts "created 1 attendance"

attendance4 = Attendance.new(
  content: "Excited to join !",
  user: user19,
  run: run4
)
attendance4.save!
puts "created 1 attendance"

attendance5 = Attendance.new(
  content: "Excited to join !",
  user: user20,
  run: run4
)
attendance5.save!
puts "created 1 attendance"
