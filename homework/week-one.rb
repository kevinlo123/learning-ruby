# question 1. Strings: What is string interpolation?
=begin
    String interpolation is a cleaner way of concatinating strings.. Ruby uses the "#{}" characters to
    run anything that is in the curly braces as ruby code if you have a variable with a string saved as its value 
    you can easily put that varibiable name in the curly braces and use it for Ex. my_name = "kevin lopez" to
    interpolate this string i could do it like this "Hello, #{my_name}" => this will output "Hello, kevin lopez"
=end

# question 2. Strings: What does it mean to “escape” a character?
=begin
     There are various "escape sequences" available for different characters you might want to use.
     these escape characters are mostly used on strings and they are useful because of what they do 
     for example if i wanted to quote a word in a string i could escape the quotes with a fowardslash
     my_name = "kevin \"lopez\"" => kevin "lopez"
     there are others like "\n" for a new line and "\t" for tabs 
    \\ – single backslash
    \a – bell/alert
    \b – backspace
    \r – carriage return
    \n – newline
    \s – space
    \t – tab
=end


# question 3. User input: Why do we need “chomp” when getting user input?
=begin
    we need chomp when were getting user input because the computers return/enter key is escaping the
    character "n" having the string on a new line and the string the user sends is going to have "\n" at the end
    of it using the method chomp removes "\n" from the users string
=end

# question 4. Numbers: Integers are whole numbers.  What data type is for decimals?
=begin
    A floating-point number or a float represents a real number. 
    Real numbers can be either a rational or an irrational number; numbers that contain 
    a fractional part, such as 9.0 or -116.42. In other words, a float in a Ruby program 
    is a number that contains a decimal point. for example my_float = 17.5
=end

# question 5. Control Flow:  What does the “elsif” operator do?
=begin
    The elsif operator is a conditional that is part of an if statement
    the elsif is another if statement within the original if conditional
    it is different from the else operator because it needs to have something to compare and make a decision on
    for example.
        my_num = 5

        if my_num == 10
            do something
        elsif my_num < 10
            print my_num
        else
            do something else
=end