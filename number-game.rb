random_num = rand(1..100)
number_of_tries = 0

loop do
  print 'Guess our random number '
  users_guess = gets.chomp
  users_guess = users_guess.to_i
  if users_guess == random_num
    puts 'You won! It took you '+ number_of_tries.to_s + ' tries'
    break
  elsif users_guess < random_num
    number_of_tries += 1
    puts 'Guess higher!'
  elsif users_guess > random_num
    number_of_tries += 1
    puts 'Guess lower!'
  end
end
