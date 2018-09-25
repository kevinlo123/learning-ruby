class PizzaOrder 
   def initialize
       puts "Hi! Welcome to Kevins pizza service."
       print "what is your name? "
       @name = gets.chomp 
       puts "Alright! #{@name} lets get started"
       chooseCrust()
   end
   def chooseCrust
       @crusts = [
           "1. thin crust ",
           "2. deep dish ",
           "3. new york style\n"
       ]
       puts "Please choose your crust our options are:"
       @crusts.each do |crust|
           print crust
       end 
       self.class.crustValidator
       self.class.toppings
   end
   def self.crustValidator
       loop do
           @usersChoice = gets.chomp
           if  @usersChoice != "thin crust" &&  @usersChoice != "deep dish" &&  @usersChoice != "new york style"
               puts "ERROR: please select a valid crust type"
           else
               puts "Awesome we have your crust"
               break
           end
       end
   end
   def self.toppings
       @toppings = [
           "1. cheese ",
           "2. pepperoni ",
           "3. mushrooms\n",
           "4. peppers ",
           "5. bacon ", 
           "6. olives\n"
       ]
       puts "Please choose your toppings our options are:\n(Limit: 3)"
       @toppings.each do |topping|
           puts topping
       end 
       @customersToppings = []
       loop do
           @usersTopping = gets.chomp
           if  @usersTopping != "cheese" &&  @usersTopping != "pepperoni" &&  @usersTopping != "mushrooms"&&  @usersTopping != "peppers" &&  @usersTopping != "bacon" &&  @usersTopping != "olives"
               puts "ERROR: please select a valid topping"
           elsif @customersToppings.include?(@usersTopping)
               puts "ERROR: #{@usersTopping} has already been added"
           else
               @customersToppings.push(@usersTopping)
               if @customersToppings.length == 3
                   puts "Awesome! lets review your order\n1 #{@usersChoice} pizza topped with #{@customersToppings.join(", ")}\nYour order will arrive promptly thank you :D"
                   break
               end
           end
       end
   end
end

my_App = PizzaOrder.new