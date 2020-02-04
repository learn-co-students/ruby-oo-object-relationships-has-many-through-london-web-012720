require_relative './lib/customer.rb'
require_relative './lib/meal.rb'
require_relative './lib/waiter.rb'
require "pry"

c1 = Customer.new("alex", 30)
c2 = Customer.new("Leandro", 40)
w1 = Waiter.new("Pedro", 6)
w2 = Waiter.new("Gabriel", 3)
m1 = Meal.new(w1,c1,30,2)
m2 = Meal.new(w1, c2,14)
m3 = Meal.new(w2,c2,50,10)
m4 = Meal.new(w1,c1,50,30)
m5 = Meal.new(w1,c2,14, 5)
m6 = Meal.new(w2,c2,50,10)

binding.pry