class Waiter
    attr_reader :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age

        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select{|m| m.waiter == self}
    end

    def best_tipper
        #meals.max_by{|m| m.tip}.customer
        meals.max_by(&:tip).customer
    end
end