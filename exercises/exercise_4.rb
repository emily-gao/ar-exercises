require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
@store4 = Store.new name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true
@store5 = Store.new name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false
@store6 = Store.new name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true

@store4.save
@store5.save
@store6.save

@mens_stores = Store.where(mens_apparel: true)
p @mens_stores

@mens_stores.map do |mens_store|
  puts mens_store.name
  puts mens_store.annual_revenue
end

@womens_stores_with_low_revenue = Store.where("womens_apparel IS true AND annual_revenue < 1000000")
pp @womens_stores_with_low_revenue
