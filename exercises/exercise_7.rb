require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print 'please enter the store name '
store_name = gets.chomp

print 'please enter the annual revenue '
annual_revenue = gets

print 'does the store carry mens apparel? (true or false) '
mens_apparel = gets.chomp == 'true'? true : false

print 'does the store carry womens apparel? (true or false) '
womens_apparel = gets.chomp == 'true'? true : false

new_store = Store.new name: store_name, annual_revenue: annual_revenue.to_i, mens_apparel: mens_apparel, womens_apparel: womens_apparel

new_store.save!

pp Store.all