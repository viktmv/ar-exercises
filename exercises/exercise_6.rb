require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Something", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 40)
@store2.employees.create(first_name: "Rick", last_name: "Sanchez", hourly_rate: 60)
@store2.employees.create(first_name: "James", last_name: "Gordon", hourly_rate: 40)
@store2.employees.create(first_name: "Alice", last_name: "Sweet", hourly_rate: 100)
