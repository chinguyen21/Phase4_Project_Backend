# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
Food.destroy_all
UserFood.destroy_all

csv_text = File.read(Rails.root.join('Food.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# puts csv

csv.each do |row|
  t = Food.new
  t.name = row['name']
  t.category = row['food_group']
  t.calories = rand(50..100)
  t.save

end


uf1 = UserFood.create(user_id: 1, food_id: Food.first.id, meal: "breakfast", date: "02/19/2021", quantity: 1)
uf2 = UserFood.create(user_id: 1, food_id: Food.second.id, meal: "breakfast", date: "02/18/2021", quantity: 2)
uf3 = UserFood.create(user_id: 1, food_id: Food.third.id, meal: "dinner", date: "02/18/2021", quantity: 3)

a1 = Article.create(author: "Beth Skwarecki on Vitals, shared by Beth Skwarecki to Lifehacker", title: "How Much Does It Really Cost to Get Into Fitness?",description: "Almost everybody who sticks to their workout routine has found a type of fitness they love. That may mean Crossfit classes multiple times a week, going for a run every morning, or hiring a personal trainer to walk them through a customized workout. Everything…", urlToImage: "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/z7zwhkwzurkrtntvhrxq.jpg",publishAt: "2021-02-09T22:15:00Z", content: "Almost everybody who sticks to their workout routine has found a type of fitness they love. That may mean Crossfit classes multiple times a week, going for a run every morning")
a2 = Article.create(
      author: "David Murphy",
      title: "Make Walking More Bearable With Dolly Parton's Apple Fitness Series",
      description: "I hate walking a lot less than running, but little is more exciting than spending an hour outside in the boring blah of suburbia. Give me hills, trails, water—anything but asphalt and walking past six different Starbucks across three blocks. And while Apple c…",
      urlToImage: "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/wsh4rxathfe1uiundhy7.jpg",
      publishAt: "2021-01-26T15:00:00Z",
      content: "I hate walking a lot less than running, but little is more exciting than spending an hour outside in the boring blah of suburbia. Give me hills, trails, wateranything but asphalt and walking past six… [+2278 chars]")

a3 = Article.create(
      author: "Brian Heater",
      title: "Apple Fitness+ is adding AirPlay casting",
      description: "A week after introducing Time to Walk, Apple has released another software update aimed at expanding its Fitness+ footprint. With today’s arrival the developer seed of watchOS 7.4 and iOS 14.5, the company is adding a new feature that will make it possible to…",
      urlToImage: "https://techcrunch.com/wp-content/uploads/2020/09/Screen-Shot-2020-09-15-at-1.34.32-PM.png?w=743",
      publishAt: "2021-02-01T18:16:55Z",
      content: "A week after introducing Time to Walk, Apple has released another software update aimed at expanding its Fitness+ footprint. With todays arrival the developer seed of watchOS 7.4 and iOS 14.5, the co… [+1623 chars]"
)

a4 = Article.create(
  author: "Aisha Jordan",
      title: "Think Twice About 'Twerk Out' Classes",
      description: "There’s never been a shortage of fad group fitness trends—from TaeBo to Zumba to pole dancing, and everything in between. A newer fad, though, is one you may want to think twice about: twerking, which has evolved from its African roots into a growing exercise…",
      urlToImage: "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/fobo4dgoehzs2cxkgmwn.jpg",
      publishAt: "2021-02-05T18:00:00Z",
      content: "Theres never been a shortage of fad group fitness trendsfrom TaeBo to Zumba to pole dancing, and everything in between. A newer fad, though, is one you may want to think twice about: twerking, which … [+2475 chars]"
)

a5 = Article.create(
  author: "Brian Heater",
      title: "Talent Hack raises $4.7M for its B2C fitness platform, Spaces",
      description: "It’s been a wild 12 months for fitness platforms, as the world’s population has struggled to adapt to workouts outside of the gym. From Lululemon’s massive Mirror acquisition to companies like Apple and Samsung launching their own solutions, exercise technolo…",
      urlToImage: "https://techcrunch.com/wp-content/uploads/2021/01/10XPphjg.jpeg?w=563",
      publishAt: "2021-01-26T15:00:26Z",
      content: "Its been a wild 12 months for fitness platforms, as the worlds population has struggled to adapt to workouts outside of the gym. From Lululemons massive Mirror acquisition to companies like Apple and… [+1534 chars]"
)


a6 = Article.create(
  author: "Brian Heater",
      title: "Pivoting to home fitness, Aviron offers gamified rowing machines",
      description: "Few tech sectors had more to gain from the events of 2020 than home fitness. Interest in the category was swift, as gyms were declared one of the bigger problem areas amid the worldwide spread of Covid-19. Suddenly home workouts were more than just luxury. Fo…",
      urlToImage: "https://techcrunch.com/wp-content/uploads/2021/01/Aviron_2020_Stills_6v2.jpg?w=711",
      publishAt: "2021-01-28T21:08:30Z",
      content: "Few tech sectors had more to gain from the events of 2020 than home fitness. Interest in the category was swift, as gyms were declared one of the bigger problem areas amid the worldwide spread of Cov… [+2218 chars]"
)

a7 = Article.create(
  author: "Jae Thomas",
      title: "Crush your 2021 fitness goals with these Samsung fitness trackers on sale",
      description: "Here are the best deals on Samsung smartwatches and fitness trackers as of Jan. 21:\n<ul>\n<li>OUR TOP PICK: Samsung Galaxy Watch Active — Save $50\r\n</li>\n<li>BEST FOR LONG WORKOUTS: Samsung Galaxy Watch Active 2 — Save up to $50.99\r\n</li>\n<li>BEST BUDGET PICK:…",
      urlToImage: "https://mondrian.mashable.com/2021%252F01%252F21%252F66%252F3bb54cb5c1654f2abeb3dca57590d06e.acc0e.jpg%252F1200x630.jpg?signature=L0iMwO6_fAnzfIDK604FMegUHzE=",
      publishAt: "2021-01-21T16:05:44Z",
      content: "Here are the best deals on Samsung smartwatches and fitness trackers as of Jan. 21:\r\nOne of the best ways to take control of your fitness and wellness is to get a smartwatch or activity tracker. The … [+2677 chars]"
)