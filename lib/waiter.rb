class Waiter


    attr_accessor :name, :exp
        @@all = []


    def initialize(name,exp)
        @name = name
        @exp = exp
        @@all << self
    end

        def self.all 
            @@all
        end
    
    
        def new_meal(customer, total, tip=0)
            Meal.new(self, customer, total, tip)
        end

    
        def meals
            Meal.all.select { |m| m.waiter == self}
        end
    

        def best_tipper
            meals.max_by(&:tip).customer
        end

end