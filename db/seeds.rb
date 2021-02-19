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


uf1 = UserFood.create(user_id: 1, food_id: Food.first.id, meal: "breakfast", date: DateTime.now, quantity: 1)
uf2 = UserFood.create(user_id: 1, food_id: Food.second.id, meal: "breakfast", date: DateTime.now, quantity: 2)
uf3 = UserFood.create(user_id: 1, food_id: Food.third.id, meal: "dinner", date: DateTime.now, quantity: 3)



