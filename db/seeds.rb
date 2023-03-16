require 'yaml'
require "open-uri"

Notification.delete_all
Review.delete_all
Message.delete_all
Attendance.delete_all
Run.delete_all
User.delete_all

puts "[CREATING USERS]"

user1 = User.new(
  email: "jules.dupont@gmail.com",
  username: "jules-running98",
  first_name: "Jules",
  last_name: 'Dupont',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "Hi, I'm Jules, a regular runner. Running has become my daily routine and I run an average of 5 miles every day. It helps me stay fit and healthy while clearing my mind. I love setting new goals and challenging myself to improve my running performance."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308872/avatars/male20161083782612976_njyoun.jpg")
user1.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user1.save!
print "1 user / "

user2 = User.new(
  email: "carine.martin@gmail.com",
  username: "carine",
  first_name: "Carine",
  last_name: 'Martin',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "Hi this is Carine! Running is my passion and I hit the pavement every day. I push myself to the limit and participate in local races. I am disciplined with my training and enjoy the mental and physical benefits that come with it."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/female2017102608090332_zirt49.jpg")
user2.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user2.save!
print "1 user / "

user3 = User.new(
  email: "julien.nguyen@gmail.com",
  username: "julien-n",
  first_name: "Julien",
  last_name: 'Nguyen',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I'm Julien, 29 y/o. I run occasionally to stay fit and clear my head. I usually go for a jog a couple of times a week, nothing too intense. Running helps me relax and feel energized. It's a great way to switch off from my busy day-to-day life."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308872/avatars/male108516398969_cfwahr.jpg")
user3.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user3.save!
print "1 user / "

user4 = User.new(
  email: "hakim.benaissa@gmail.com",
  username: "hakimbenaissa",
  first_name: "Hakim",
  last_name: 'Benaissa',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "Hi, I'm Hakim, a beginner runner. I recently started running to improve my fitness and health. It's been a challenge, but I'm determined to stick with it. I'm starting slow and gradually building up my endurance. It feels great to see progress and I'm excited to see where this journey takes me."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/male20151086170387787_gqtdis.jpg")
user4.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user4.save!
print "1 user / "

user5 = User.new(
  email: "john.mitchell@gmail.com",
  username: "johnmitchell",
  first_name: "John",
  last_name: 'Mitchell',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I'm new to running and just starting out with short jogs. It's challenging, but I enjoy the sense of achievement and the benefits it brings to my health. I'm taking it slow, but I'm excited to see where this journey takes me."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/male1085851718597_wwaeyy.jpg")
user5.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user5.save!
print "1 user / "

user6 = User.new(
  email: "rolande.cousineau@gmail.com",
  username: "rolande1",
  first_name: "Rolande",
  last_name: 'Cousineau',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I just started a couch-to-5k program and I'm excited to see where it takes me. It's challenging, but I love the progress I'm making. I hope to run my first 5k soon and feel proud of my accomplishment."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/female20141023711279694_ehuphc.jpg")
user6.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user6.save!
print "1 user / "

user7 = User.new(
  email: "viviane.mercier@gmail.com",
  username: "vivi88",
  first_name: "Viviane",
  last_name: 'Mercier',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I just started running to improve my fitness and overall health. It's been challenging, but I am determined to stick with it. I run for short periods and take breaks as needed. I'm excited to see progress and hope to eventually run a 5k!"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/female102244160852_llqpfb.jpg")
user7.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user7.save!
print "1 user / "

user8 = User.new(
  email: "olympe.gagnon@gmail.com",
  username: "running-olympe",
  first_name: "Olympe",
  last_name: 'Gagnon',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I love the challenge and beauty of running on mountain trails. I go out early to enjoy the peace and quiet of nature. It's tough, but the views are worth it. I stay hydrated and enjoy healthy snacks on my breaks. Trail running is my passion!"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/female2008102329451484_uu44mq.jpg")
user8.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user8.save!
print "1 user / "

user9 = User.new(
  email: "pietro.colina@gmail.com",
  username: "pietro",
  first_name: "Pietro",
  last_name: 'Colina',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I thrive on the challenge of training and pushing myself to the limit. I follow a strict schedule and focus on nutrition, rest, and recovery. The feeling of crossing the finish line after 26.2 miles is indescribable. I'm always aiming for a new personal best!"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678309114/avatars/male20161086598156006_f9q8sc.jpg")
user9.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user9.save!
print "1 user / "

user10 = User.new(
  email: "manuel.costa@gmail.com",
  username: "manueldc",
  first_name: "Manuel",
  last_name: 'Costa',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I've been running for over 30 years and it has kept me feeling young and healthy. I may not be as fast as I used to be, but I still lace up my shoes and hit the pavement every day. Running has become a part of who I am and I couldn't imagine my life without it."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678309114/avatars/male1084850574768_diql3z.jpg")
user10.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user10.save!
print "1 user / "

user11 = User.new(
  email: "manon.paget@gmail.com",
  username: "manonpaget",
  first_name: "Manon",
  last_name: 'Paget',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I've been running for decades and it's become a part of who I am. These days, I take it slower, but still enjoy the freedom and sense of accomplishment that running provides. It keeps me healthy and happy, and I hope to continue for as long as I can."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/female20161025297385742_w5dr4o.jpg")
user11.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user11.save!
print "1 user / "

user12 = User.new(
  email: "mathieu.bernard@gmail.com",
  username: "mathieu13",
  first_name: "Mathieu",
  last_name: 'Bernard',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I train hard for months to prepare for a 26.2 mile race. I am disciplined with my diet and rest to ensure peak performance. The race is mentally and physically challenging, but the feeling of crossing the finish line is indescribable. Running marathons is my passion."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678309189/avatars/male1085919192108_twj0sv.jpg")
user12.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user12.save!
print "1 user / "

user13 = User.new(
  email: "renaud.desrosiers@gmail.com",
  username: "renaudrunning",
  first_name: "Renaud",
  last_name: 'Desrosiers',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I love the challenge of running on uneven terrain and being surrounded by nature. I run several times a week and switch up my routes for variety. I enjoy the sense of accomplishment after a tough trail run and the peace it brings to my mind."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678309189/avatars/male1085317670196_oeyigj.jpg")
user13.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user13.save!
print "1 user / "

user14 = User.new(
  email: "faiza.douadi@gmail.com",
  username: "faizadouadi",
  first_name: "Faiza",
  last_name: 'Douadi',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "In my free time, I enjoy pursuing my passion for running and fitness. As a dedicated athlete, I am constantly challenging myself to improve my performance and reach new heights. I believe that a healthy mind and body are essential for success, and I prioritize fitness and wellness in my daily routine."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678309232/avatars/female20141023759961822_n9whzv.jpg")
user14.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user14.save!
print "1 user / "

user15 = User.new(
  email: "moussa.diallo@gmail.com",
  username: "moussa",
  first_name: "Moussa",
  last_name: 'Diallo',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I love exploring nature while pushing my physical limits. Trail running keeps me engaged and motivated. I am well-equipped with proper gear and always carry water and snacks. I respect the environment and leave no trace. Running on the trails brings me peace and joy."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678308871/avatars/male20161086497879852_pcl4gg.jpg")
user15.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user15.save!
print "1 user / "

user16 = User.new(
  email: "paul.robert@gmail.com",
  username: "paulo",
  first_name: "Paul",
  last_name: 'Robert',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I recently started running to improve my health and fitness. It's challenging, but I love the sense of achievement after each run. I take it slow and steady, building up my endurance. I hope to run my first 5k soon and continue improving!"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678313036/male20161086421672211_ua0oed.jpg")
user16.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user16.save!
print "1 user / "

user17 = User.new(
  email: "stephane.dubois@gmail.com",
  username: "steph12",
  first_name: "Stéphane",
  last_name: 'Dubois',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "I want to discover running. I'm looking for a way to improve my fitness and clear my mind. I'm starting with short runs and will gradually increase my distance. I'm excited to see what running can do for me, and hope to make it a part of my daily routine."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678313036/male20161086572948303_uum979.jpg")
user17.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user17.save!
print "1 user / "

user18 = User.new(
  email: "alice.pommard@gmail.com",
  username: "alicep",
  first_name: "Alice",
  last_name: 'Pommard',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "Hey there, I'm Alice and I want to discover running. It's something I've always wanted to try, but never found the motivation for. I'm excited to start this journey and improve my health and fitness. I'm open to advice and tips from experienced runners, and can't wait to see where this takes me!"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678313036/female20171026239950775_b0zify.jpg")
user18.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user18.save!
print "1 user / "

user19 = User.new(
  email: "marie.tran@gmail.com",
  username: "marie98",
  first_name: "Marie",
  last_name: 'Tran',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "Hi, I'm Marie and I want to start jogging. It's been a while since I've been active and I want to make a positive change. I plan to start slow and work my way up, building endurance and strength. I'm determined to make this a sustainable habit and improve my overall wellbeing."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678313036/female2009102336737964_yf9pzz.jpg")
user19.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user19.save!
print "1 user / "

user20 = User.new(
  email: "lucie.blanc@gmail.com",
  username: "lucieblanc",
  first_name: "Lucie",
  last_name: 'Blanc',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "Hey, I'm Lucie and I want to start jogging. I'm looking for a way to stay active and improve my health without the need for a gym. I plan to start with short distances and gradually build up my endurance. I'm excited to start this new journey and challenge myself!"
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678313036/female20151024206432526_jndds8.jpg")
user20.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user20.save!
print "1 user / "

user21 = User.new(
  email: "yann.delaqueze@gmail.com",
  username: "yanndqz",
  first_name: "Yann",
  last_name: 'Delaqueze',
  password: "topsecret",
  password_confirmation: "topsecret",
  description: "Hi, I'm Yann and I love running long distance. There's something about pushing myself to go further and further that I can't get enough of. I've completed several marathons and even a couple of ultra marathons. It's not just about physical fitness, but also mental toughness. Running is a big part of who I am."
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1678447147/YD_aixjcl.png")
user21.photo.attach(io: file, filename: "image.png", content_type: "image/png")
user21.save!
print "1 user / "
puts ""
puts "[CREATING UPCOMING RUNS]"

run1 = Run.new(
  name: "Running Loops in Buttes Chaumont",
  description: "This will be a hilly run in the Parc des Buttes Chaumont. Good level required!",
  category: "Urban Trail",
  level: 5,
  distance: 12,
  max_person: 4,
  meeting_point: "5 Place Armand Carrel, 75019 Paris",
  date: (DateTime.now + ((6 - DateTime.now.wday) % 7)).change(hour: 9),
  user: user1
)
file = File.open("app/assets/images/run_images/Urban_trail.jpg")
run1.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run1.save!
print "1 run / "

run2 = Run.new(
  name: "Running Guided Tour in Le Marais",
  description: "I will make you discover my city, in a - not so easy - run. Come and join us!",
  category: "City Tour",
  level: 3,
  distance: 8,
  max_person: 5,
  meeting_point: "52 Rue de Rivoli, 75004 Paris",
  date: (DateTime.now + ((7 - DateTime.now.wday) % 7)).change(hour: 9),
  user: user2
)
file = File.open("app/assets/images/run_images/City_tour.jpg")
run2.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run2.save!
print "1 run / "

run3 = Run.new(
  name: "Soft Jogging in Bois de Vincennes",
  description: "Super chill run in the Bois de Vincennes. All levels welcome, we will adapt. Let's run together!",
  category: "Casual",
  level: 2,
  distance: 10,
  max_person: 3,
  meeting_point: "293 Av. Daumesnil, 75012 Paris",
  date: (DateTime.now + ((6 - DateTime.now.wday) % 7)).change(hour: 10),
  user: user3
)
file = File.open("app/assets/images/run_images/Casual.jpg")
run3.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run3.save!
print "1 run / "

run3bis = Run.new(
  name: "Fast & Slow running loops in Jardin du Luxembourg",
  description: "Challenging run in the Jardin du Luxembourg. Easy in the beginning with a few accelerations after. Come run with me!",
  category: "Running",
  level: 3,
  distance: 10,
  max_person: 4,
  meeting_point: "4 Rue Auguste Comte, 75006 Paris",
  date: (DateTime.now + ((6 - DateTime.now.wday) % 7)).change(hour: 10),
  user: user3
)
file = File.open("app/assets/images/run_images/Running.jpg")
run3bis.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run3bis.save!
print "1 run / "

run4 = Run.new(
  name: "Uphill & Downhill Run in Montmartre",
  description: "Coaching in the stairs of Montmarte : Ups & Downs, interval training. It'll be tough!",
  category: "Coaching",
  level: 5,
  distance: 15,
  max_person: 4,
  meeting_point: "35 Rue du Chevalier de la Barre, 75018 Paris",
  date: (DateTime.now + ((7 - DateTime.now.wday) % 7)).change(hour: 9),
  user: user4
)
file = File.open("app/assets/images/run_images/Coaching.jpg")
run4.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run4.save!
print "1 run / "

run5 = Run.new(
  name: "Easy Running loops in Parc Monceau",
  description: "Simple run in Parc Monceau. Nothing really hard, all levels welcome. Let's go!!!",
  category: "Casual",
  level: 2,
  distance: 7,
  max_person: 3,
  meeting_point: "35 Bd de Courcelles, 75008 Paris",
  date: (DateTime.now + ((6 - DateTime.now.wday) % 7)).change(hour: 17),
  user: user5
)
file = File.open("app/assets/images/run_images/Casual.jpg")
run5.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run5.save!
print "1 run / "

run6 = Run.new(
  name: "Super slow jogging along Canal Saint-Martin",
  description: "Super casual run along Canal Saint-Martin. We will go slow and chat.",
  category: "Casual",
  level: 1,
  distance: 5,
  max_person: 5,
  meeting_point: "14 Rue des Récollets, 75010 Paris",
  date: (DateTime.now + ((7 - DateTime.now.wday) % 7)).change(hour: 9),
  user: user6
)
file = File.open("app/assets/images/run_images/Casual.jpg")
run6.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run6.save!
print "1 run / "

run7 = Run.new(
  name: "Run & enjoy the view of Quais de Seine!",
  description: "We will run along the Quais de Seine, go past Musée d'Orsay, Tour Eiffel, la Concorde, les Tuileries. Let's run slow and enjoy the view!",
  category: "City Tour",
  level: 3,
  distance: 10,
  max_person: 6,
  meeting_point: "Quai Anatole France, 75007 Paris",
  date: (DateTime.now + ((6 - DateTime.now.wday) % 7)).change(hour: 16),
  user: user7
)
file = File.open("app/assets/images/run_images/City_tour.jpg")
run7.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run7.save!
print "1 run / "

run8 = Run.new(
  name: "Up & Down the stairs of Fourvières",
  description: "Tough session in the hills and stairs of Fourvières. We will sweat, but the view up there is worth the effort!",
  category: "Urban Trail",
  level: 5,
  distance: 15,
  max_person: 5,
  meeting_point: "4 Av. Adolphe Max, 69005 Lyon",
  date: (DateTime.now + ((7 - DateTime.now.wday) % 7)).change(hour: 9),
  user: user8
)
file = File.open("app/assets/images/run_images/Urban_trail.jpg")
run8.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run8.save!
print "1 run / "

run9 = Run.new(
  name: "Speedy running loops in Parc de la Tête d'Or",
  description: "Fast run in the Parc de la Tête d'Or. Be prepared to run pretty fast, it will not be so easy.",
  category: "Running",
  level: 4,
  distance: 12,
  max_person: 4,
  meeting_point: "55 Boulevard des Belges, 69006 Lyon",
  date: (DateTime.now + ((6 - DateTime.now.wday) % 7)).change(hour: 8),
  user: user9
)
file = File.open("app/assets/images/run_images/Running.jpg")
run9.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run9.save!
print "1 run / "

run10 = Run.new(
  name: "Casual & friendly run along Quais du Rhône",
  description: "Slow and cool run along Quais du Rhône up to Confluence. I run slow, don't worry.",
  category: "Casual",
  level: 1,
  distance: 8,
  max_person: 3,
  meeting_point: "15 Quai Claude Bernard, 69007 Lyon",
  date: (DateTime.now + ((7 - DateTime.now.wday) % 7)).change(hour: 9),
  user: user10
)
file = File.open("app/assets/images/run_images/Casual.jpg")
run10.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run10.save!
print "1 run / "

run11 = Run.new(
  name: "Guided Running Tour in Lyon Centre",
  description: "Fast paced run around Place Bellecour and Vieux Lyon. Be prepared to sweat a little.",
  category: "City Tour",
  level: 4,
  distance: 10,
  max_person: 4,
  meeting_point: "Place Bellecour, 69002 Lyon",
  date: (DateTime.now + ((6 - DateTime.now.wday) % 7)).change(hour: 10),
  user: user11
)
file = File.open("app/assets/images/run_images/City_tour.jpg")
run11.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run11.save!
print "1 run / "

run12 = Run.new(
  name: "Sporty hiking in Les Calanques",
  description: "Sporty hike in the Calanques of Marseille. Amazing scenery, breathtaking landscapes.",
  category: "Hiking",
  level: 5,
  distance: 12,
  max_person: 4,
  meeting_point: "12 Bd Alexandre Delabre, 13008 Marseille",
  date: (DateTime.now + ((7 - DateTime.now.wday) % 7)).change(hour: 9),
  user: user12
)
file = File.open("app/assets/images/run_images/Hiking.jpg")
run12.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run12.save!
print "1 run / "

run13 = Run.new(
  name: "Cool run around Le Vieux Port - Marseille",
  description: "Cool run in the heart of Marseille, around Vieux Port, le Panier... let's grab a coffee afterwards!",
  category: "City Tour",
  level: 3,
  distance: 7,
  max_person: 6,
  meeting_point: "174 Quai du Port, 13002 Marseille",
  date: (DateTime.now + ((6 - DateTime.now.wday) % 7)).change(hour: 14),
  user: user13
)
file = File.open("app/assets/images/run_images/City_tour.jpg")
run13.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run13.save!
print "1 run / "

run14 = Run.new(
  name: "Easy run along La Corniche",
  description: "Chat and run on La Corniche in Marseille. Come join me for some beautiful views and a good time running",
  category: "Casual",
  level: 2,
  distance: 14,
  max_person: 5,
  meeting_point: "58 Boulevard Charles Livon, 13007 Marseille",
  date: (DateTime.now + ((7 - DateTime.now.wday) % 7)).change(hour: 9),
  user: user14
)
file = File.open("app/assets/images/run_images/Casual.jpg")
run14.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run14.save!
print "1 run / "

run15 = Run.new(
  name: "Challenging loops in Parc Borely",
  description: "Fast paced run in Parc Borely. Some interval training if you're motivated, and a beer after that!",
  category: "Running",
  level: 4,
  distance: 8,
  max_person: 5,
  meeting_point: "Avenue du Parc Borély, 13008 Marseille",
  date: (DateTime.now + ((6 - DateTime.now.wday) % 7)).change(hour: 18),
  user: user15
)
file = File.open("app/assets/images/run_images/Running.jpg")
run15.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run15.save!
print "1 run / "
puts ""
puts "[CREATING ATTENDANCES]"

attendance1 = Attendance.new(
  content: "Looking forward to attending!",
  user: user16,
  run: run1,
  status: "confirmed"
)
attendance1.save!
print "1 attendance / "

attendance2 = Attendance.new(
  content: "Can't wait to be there!",
  user: user17,
  run: run8,
  status: "confirmed"
)
attendance2.save!
print "1 attendance / "

attendance3 = Attendance.new(
  content: "Excited to join!",
  user: user18,
  run: run12,
  status: "confirmed"
)
attendance3.save!
print "1 attendance / "

attendance4 = Attendance.new(
  content: "Excited to join!",
  user: user19,
  run: run8,
  status: "confirmed"
)
attendance4.save!
print "1 attendance / "

attendance5 = Attendance.new(
  content: "Excited to join!",
  user: user20,
  run: run4,
  status: "confirmed"
)
attendance5.save!
print "1 attendance / "

puts ""
puts "[CREATING PAST RUNS]"

run16 = Run.new(
  name: "Speedy run near Canal Saint-Martin",
  description: "Speedy run along Canal Saint-Martin. We will go fast and sweat!!!",
  category: "Running",
  level: 4,
  distance: 12,
  max_person: 5,
  meeting_point: "14 Rue des Récollets, 75010 Paris",
  date: DateTime.now.last_week(:saturday).change(hour: 9),
  user: user1
)
file = File.open("app/assets/images/run_images/Running.jpg")
run16.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run16.save!
print "1 run / "

run17 = Run.new(
  name: "Guided Run in Le Marais",
  description: "I will make you discover my city, in a - not so easy - run. Come and join us!",
  category: "City Tour",
  level: 2,
  distance: 8,
  max_person: 4,
  meeting_point: "52 Rue de Rivoli, 75004 Paris",
  date: DateTime.now.last_week(:sunday).change(hour: 9),
  user: user1
)
file = File.open("app/assets/images/run_images/City_tour.jpg")
run17.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run17.save!
print "1 run / "

run18 = Run.new(
  name: "Easy run in Bois de Vincennes",
  description: "Super chill run in the Bois de Vincennes. All levels welcome, we will adapt. Let's run together!",
  category: "Casual",
  level: 2,
  distance: 10,
  max_person: 3,
  meeting_point: "293 Av. Daumesnil, 75012 Paris",
  date: DateTime.now.last_week(:saturday).change(hour: 18),
  user: user1
)
file = File.open("app/assets/images/run_images/Casual.jpg")
run18.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run18.save!
print "1 run / "

run19 = Run.new(
  name: "Stairs of Fourvières 😈",
  description: "Tough session in the hills and stairs of Fourvières. We will sweat, but the view up there is worth the effort!",
  category: "Trail Running",
  level: 5,
  distance: 15,
  max_person: 5,
  meeting_point: "4 Av. Adolphe Max, 69005 Lyon",
  date: DateTime.now.last_week(:saturday).change(hour: 17),
  user: user8
)
file = File.open("app/assets/images/run_images/Trail_running.jpg")
run19.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run19.save!
print "1 run / "

run20 = Run.new(
  name: "Pretty Fast run in Parc de la Tête d'Or",
  description: "Fast run in the Parc de la Tête d'Or. Be prepared to run pretty fast, it will not be so easy.",
  category: "Running",
  level: 4,
  distance: 12,
  max_person: 4,
  meeting_point: "55 Boulevard des Belges, 69006 Lyon",
  date: DateTime.now.last_week(:saturday).change(hour: 17),
  user: user8
)
file = File.open("app/assets/images/run_images/Running.jpg")
run20.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run20.save!
print "1 run / "

run21 = Run.new(
  name: "Trail in Les Calanques",
  description: "Sporty Trail Run in the Calanques of Marseille. Amazing scenery, breathtaking landscapes.",
  category: "Trail Running",
  level: 5,
  distance: 12,
  max_person: 4,
  meeting_point: "12 Bd Alexandre Delabre, 13008 Marseille",
  date: DateTime.now.last_week(:sunday).change(hour: 9),
  user: user12
)
file = File.open("app/assets/images/run_images/Trail_running.jpg")
run21.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run21.save!
print "1 run / "

run22 = Run.new(
  name: "Cool Guided Run around Le Vieux Port",
  description: "Cool run in the heart of Marseille, around Vieux Port, le Panier... let's grab a coffee afterwards!",
  category: "City Tour",
  level: 3,
  distance: 7,
  max_person: 6,
  meeting_point: "174 Quai du Port, 13002 Marseille",
  date: DateTime.now.last_week(:saturday).change(hour: 14),
  user: user12
)
file = File.open("app/assets/images/run_images/City_tour.jpg")
run22.photo.attach(io: file, filename: "image.png", content_type: "image/png")
run22.save!
print "1 run / "

puts "[CREATING PAST ATTENDANCES & REVIEWS]"

attendance7 = Attendance.new(
  content: "Excited to join !",
  user: user3,
  run: run16,
  status: "confirmed"
)
attendance7.save!

review7 = Review.new(
  rating: 5,
  comment: "We had a great time with Jules",
  attendance: attendance7
)
review7.save!

print "1 attendance-1 review / "

attendance8 = Attendance.new(
  content: "Wouhouhhhh!!",
  user: user4,
  run: run16,
  status: "confirmed"
)
attendance8.save!

review8 = Review.new(
  rating: 4,
  comment: "Great Run! A bit difficult though!",
  attendance: attendance8
)
review8.save!

print "1 attendance-1 review / "

attendance9 = Attendance.new(
  content: "Go Go Go!!",
  user: user5,
  run: run16,
  status: "confirmed"
)
attendance9.save!

review9 = Review.new(
  rating: 5,
  comment: "Super Run, great place, great organization! Loved the 🍻 aferwards...",
  attendance: attendance9
)
review9.save!

print "1 attendance-1 review / "

attendance10 = Attendance.new(
  content: "Excited to join!",
  user: user5,
  run: run17,
  status: "confirmed"
)
attendance10.save!

review10 = Review.new(
  rating: 5,
  comment: "Jules is super nice, I loved it!",
  attendance: attendance10
)
review10.save!

print "1 attendance-1 review / "

attendance11 = Attendance.new(
  content: "Excited to join!",
  user: user6,
  run: run17,
  status: "confirmed"
)
attendance11.save!

review11 = Review.new(
  rating: 3,
  comment: "It was cool, but a bit short",
  attendance: attendance11
)
review11.save!

print "1 attendance-1 review / "

attendance12 = Attendance.new(
  content: "Excited to join!",
  user: user7,
  run: run17,
  status: "confirmed"
)
attendance12.save!

review12 = Review.new(
  rating: 5,
  comment: "Just perfect",
  attendance: attendance12
)
review12.save!

print "1 attendance-1 review / "

attendance13 = Attendance.new(
  content: "Excited to join!",
  user: user15,
  run: run18,
  status: "confirmed"
)
attendance13.save!

review13 = Review.new(
  rating: 5,
  comment: "I loved it. Very slow run, as expected",
  attendance: attendance13
)
review13.save!

print "1 attendance-1 review / "

attendance14 = Attendance.new(
  content: "Excited to join!",
  user: user2,
  run: run19,
  status: "confirmed"
)
attendance14.save!

review14 = Review.new(
  rating: 5,
  comment: "Super tough, I loved it. Olympe is great",
  attendance: attendance14
)
review14.save!

print "1 attendance-1 review / "

attendance15 = Attendance.new(
  content: "Excited to join!",
  user: user3,
  run: run19,
  status: "confirmed"
)
attendance15.save!

review15 = Review.new(
  rating: 2,
  comment: "Much harder than I thought... 🥵",
  attendance: attendance15
)
review15.save!

print "1 attendance-1 review / "

attendance16 = Attendance.new(
  content: "Excited to join!",
  user: user4,
  run: run19,
  status: "confirmed"
)
attendance16.save!

review16 = Review.new(
  rating: 5,
  comment: "Olympe is the best 💪",
  attendance: attendance16
)
review16.save!

print "1 attendance-1 review / "

attendance17 = Attendance.new(
  content: "Excited to join!",
  user: user9,
  run: run20,
  status: "confirmed"
)
attendance17.save!

review17 = Review.new(
  rating: 4,
  comment: "I thought it would be harder 🫠... Olympe was awesome though.",
  attendance: attendance17
)
review17.save!

print "1 attendance-1 review / "

attendance18 = Attendance.new(
  content: "Excited to join!",
  user: user10,
  run: run20,
  status: "confirmed"
)
attendance18.save!

review18 = Review.new(
  rating: 5,
  comment: "Just perfect. Great Run, great Time, great organizer!",
  attendance: attendance18
)
review18.save!

print "1 attendance-1 review / "

attendance19 = Attendance.new(
  content: "Excited to join!",
  user: user11,
  run: run21,
  status: "confirmed"
)
attendance19.save!

review19 = Review.new(
  rating: 3,
  comment: "Mathieu is a great organizer, but the trail was too hard for me.",
  attendance: attendance19
)
review19.save!

print "1 attendance-1 review / "

attendance20 = Attendance.new(
  content: "Excited to join!",
  user: user11,
  run: run22,
  status: "confirmed"
)
attendance20.save!

review20 = Review.new(
  rating: 5,
  comment: "Mathieu drew a beautiful route and told us a lot about the city while having a great run",
  attendance: attendance20
)
review20.save!

print "1 attendance-1 review / "

attendance21 = Attendance.new(
  content: "Excited to join!",
  user: user16,
  run: run22,
  status: "confirmed"
)
attendance21.save!

review21 = Review.new(
  rating: 4,
  comment: "Great guide, beautiful city, but a bit too short IMO 🤷‍♂️",
  attendance: attendance21
)
review21.save!

print "1 attendance-1 review / "
puts ""
puts "[ALL DONE]"





# CONTENTS = ["Looking forward to attending!", "Can't wait to be there!", "Excited to join the event!",
# "I would be happy to participate!", "Count me in, I'm ready to go!"]


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
