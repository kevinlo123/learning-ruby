#creating functions for every win possibility, 
# rows: first, second, third  
# columns: first, second, third
# diagonal: left/right

def first_row_win?(board)
    board[0] != nil &&
    board[0] == board[1] &&
    board[0] == board[2]
end
  
def second_row_win?(board)
    board[3] != nil &&
    board[3] == board[4] &&
    board[3] == board[5]
end
  
def third_row_win?(board)
    board[6] != nil &&
    board[6] == board[7] &&
    board[6] == board[8]
end
  
def first_column_win?(board)
    board[0] != nil &&
    board[0] == board[3] &&
    board[0] == board[6]
end
  
def second_column_win?(board)
    board[1] != nil &&
    board[1] == board[4] && 
    board[1] == board[7]
end
  
def third_column_win?(board)
    board[2] != nil && 
    board[2] == board[5] &&
    board[2] == board[8]
end
  
def diag_right_win?(board)
    board[0] != nil && 
    board[0] == board[4] &&
    board[0] == board[8]
end
  
def diag_left_win?(board)
    board[2] != nil && 
    board[2] == board[4] && 
    board[2] == board[6]
end

# board win function that is going to take the array as an argument
# and check to see if there is a winner by using all the functions above using the || operator

def board_win?(board)
    first_row_win?(board) ||
    second_row_win?(board) ||
    third_row_win?(board) ||
    first_column_win?(board) ||
    second_column_win?(board) ||
    third_column_win?(board) ||
    diag_right_win?(board) ||
    diag_left_win?(board) 
end

def board_tie?(board)
    !board.include?(nil)  #if the board array does not include another more "nils" it means there was no winner 
end

  
def print_if_not_nil(value) #abstraction function to be used to reprint the board
    if value == nil
      print " "
    else
      print value
    end
end 
  
def print_first_row(board) #top row of the game
    print_if_not_nil(board[0])
    print '|'
    print_if_not_nil(board[1])
    print '|'
    print_if_not_nil(board[2])
end
  
def print_second_row(board) #second/middle row
    print_if_not_nil(board[3])
    print '|'
    print_if_not_nil(board[4])
    print '|'
    print_if_not_nil(board[5])
end
  
  
def print_third_row(board) #third row of the game
    print_if_not_nil(board[6])
    print '|'
    print_if_not_nil(board[7])
    print '|'
    print_if_not_nil(board[8])
end
  
def print_all(board)  #function used to create our full game board
    print_first_row(board)
    puts
    puts "-" * 6
    print_second_row(board)
    puts
    puts "-" * 6
    print_third_row(board)
    puts
end
  
  
def start_tic_tac_toe
    board = [nil] * 9
    player = 'X'
    puts "Ruby tic-tac-toe! X goes first!" 
    loop do
        print_all(board)
        print "what space will you choose?"
        users_choice = gets.chomp.to_i
        if board[users_choice] != nil
            puts 'space already taken'
            next
        end
        board[users_choice] = player
        if board_win?(board)
            print_all(board)
            puts "Winner! " + player + " wins!"
            break
        end
        if board_tie?(board)
            puts "Nobody wins, there was a Tie!"
            break
        end
        if player == "X"
            player = "O"
        else
            player = "X"
        end
    end
end

start_tic_tac_toe