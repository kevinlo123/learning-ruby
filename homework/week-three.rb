=begin 
    question 1. Arrays. What if you use a negative index to get a value? 
    Ruby arrays have some nifty behavior when passed negative array indices. Let’s say you have an array “nums = [1,2,3,4,5,6]”
    by trying to access the array with a negative value nums[-1] this will access the last element in the array ’6’ if you access nums[-2] 
    it would be second to last ‘5’.
=end

=begin 
    question 2 method.  How do you make arguments optional? 
    Arguments can be made optional by pre-declaring them in the parameter block for example.
    
    def add_nums(a, b=5)
        a + b
    end

    add_nums(5) // 10
    add_nums(5,10) // 15

    In the example above b is going to be our optional argument it’ll set the value of it to be 5 unless told other wise
=end