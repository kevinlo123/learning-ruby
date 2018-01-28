def start_rock_paper_scissors
  users_score = 0
  computers_score = 0
  options = ["rock","paper","scissors"]
  loop do
    puts "Rock, Paper, or Scissors?"
    users_choice = gets.chomp
    computers_choice = options.sample
    if !(options.include?(users_choice))
      puts "This is not a valid option"
      next
    elsif users_choice == computers_choice
      puts "There was a tie!" + " your choice: " + users_choice + "," + " computers choice: " + computers_choice
      puts "Your score: " + users_score.to_s
      puts "Computers score: " + computers_score.to_s
      next
    elsif users_choice == "rock" && computers_choice == "scissors"
      users_score += 1
      puts "You win!" + " your choice: " + users_choice + "," + " computers choice: " + computers_choice
      puts "Your score: " + users_score.to_s
      puts "Computers score: " + computers_score.to_s
    elsif users_choice == "paper" && computers_choice == "rock"
      users_score += 1
      puts "You win!" + " your choice: " + users_choice + "," + " computers choice: " + computers_choice
      puts "Your score: " + users_score.to_s
      puts "Computers score: " + computers_score.to_s
    elsif users_choice == "scissors" && computers_choice == "paper"
      users_score += 1
      puts "You win!" + " your choice: " + users_choice + "," + " computers choice: " + computers_choice
      puts "Your score: " + users_score.to_s
      puts "Computers score: " + computers_score.to_s
    else
      computers_score += 1
      puts "You lose!" + " your choice: " + users_choice + "," + " computers choice: " + computers_choice
      puts "Your score: " + users_score.to_s
      puts "Computers score: " + computers_score.to_s
    end
  end
end
