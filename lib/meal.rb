class Meal
    attr_reader :waiter, :customer, :total, :tip

    @@all = []

    def initialize(name, customer, total, tip)
        @waiter = name
        @customer = customer
        @total = total
        @tip = tip 

        @@all << self
    end

    def self.all
        @@all
    end
end