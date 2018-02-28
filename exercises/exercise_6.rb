require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jeremy", last_name: "Virani", hourly_rate: 50)
@store1.employees.create(first_name: "Scott", last_name: "Virani", hourly_rate: 70)
@store2.employees.create(first_name: "Ray", last_name: "Virani", hourly_rate: 100)
@store2.employees.create(first_name: "Klark", last_name: "Virani", hourly_rate: 70)
@store2.employees.create(first_name: "Rebecca", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Jade", last_name: "Virani", hourly_rate: 80)
@store2.employees.create(first_name: "Joseph", last_name: "Virani", hourly_rate: 60)

puts Employee.where(store_id: 1).count
puts Employee.where(store_id: 2).count