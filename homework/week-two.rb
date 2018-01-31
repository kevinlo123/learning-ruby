=begin question 1. Method Definitions: What is an explicit return?
    You can generally leave out the return method in most Ruby functions. A Ruby function will automatically 
    return the last thing evaluated, unless an explicit return comes before it. The explicit return is using the
    reserved key word return for returning a value. return gives you the ability to reuse values in other functions, 
    while puts will merely print it to the screen.
=end

=begin question 2. Arrays: How can you add two arrays together?
    Concatenation is to append one thing to another. For example, concatenating the arrays [1,2,3] and 
    [4,5,6] will give you [1,2,3,4,5,6]. This can be done in a few ways in Ruby.To do this using the concat 
    method well do. To do this another way we can use "+" just like we would on strings and this will make a copy 
    of the original array.
        
    array_one = [1,2,3]
    array_two = [4,5,6]
    
    array_concatenated = array_one.concat(array_two)
    output : array_concatenated = [1,2,3,4,5,6] //altering original

    array_concatenated = array_one + array_two
    output : array_concatenated = [1,2,3,4,5,6] //copy
=end

=begin question 3. Arrays: How to get the number of items in an array?
    to get the amount of items/elements in an array we can use the .length method
        
    array_one = [1,2,3]
    num = array_one.length

    output : num = 3
=end

=begin question 4. Arrays: If you have nested arrays what method will turn it into a single, unnested array??
    To turn a nested array into a single string you can use the .join() method

    array_one = [1,2,3]
    string = array_one.join(",").to_s

    output : string = "1,2,3"
=end