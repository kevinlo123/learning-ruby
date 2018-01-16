#a simple adding program created using the ruby programming language.

puts "welcome to Ruby Math! , please input the numbers you'd like to add"
num1 = gets.to_i
num2 = gets.to_i

def calculator(num1, num2)
    sum = num1 + num2 
    numberLessThan100 = " was less than 100."
    numberGreaterThan100 = " was greater than 100."
    is100 = " was 100."    
    if sum < 100
            print "your num " + sum.to_s + numberLessThan100
        elsif sum > 100
            print "your num " + sum.to_s + numberGreaterThan100
        else 
            print "your num " + is100
    end
end

puts calculator(num1 , num2);






