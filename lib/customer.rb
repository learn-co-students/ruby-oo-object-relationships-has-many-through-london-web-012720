
# CLASS CUSTOMER
# possui name, age
# all

class Customer
    attr_accessor :name, :age
    @@all = []
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def meals
        Meal.all.select{|m| m.customer == self} 
    end

    def waiters
        meals.map{|m| m.waiter}
    end

    def new_meal(waiter, total, tip=0)
        Meal.new(waiter, self, total, tip)
    end

    def new_meal_20_percent(waiter, total)
        tip = total * 0.2
        Meal.new(waiter,self, total, tip)
    end

    def self.older_customer
        customer_to_return = @@all.max do |customer_1, customer_2|
            customer_1.age <=> customer_2.age                    
        end
        customer_to_return
    end
end