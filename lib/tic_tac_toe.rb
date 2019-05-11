class TicTacToe
  attr_accessor :board 
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6],
    ]
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
 def input_to_index(user_input)
   user_input.to_i - 1
   #returns the corresponding index #of the user input string 
 end 

  def move(index, token = "X")
    @board[index] = token 
    
    #takes in two arguments: the index in the `@board` array that the player #chooses and the player's token
  end 
  
  def position_taken?(index)
    if @board[index] == " "
      false 
    else 
      true 
      #evaluates the user's desired move against the Tic Tac Toe board and #checks to see whether or not that position is already occupied. 
    end 
  end
  
  def valid_move?(index)
      index.between?(0,8) && !position_taken?(index)
    end 
    
    #accepts a position/index, checks and returns `true` if the move is valid and `false` or `nil` if not.
    #1. Present on the game board.
    #2. Not already filled with a token.
  
  def turn 
    puts "Please enter 1-9:"
     input = gets.strip
     index = input_to_index(input)
      char = current_player
    if valid_move?(index)
      move(index, char)
      display_board
    else
      turn
    end
   end

# ask for input
# get input
# translate input into index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again
  
   def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def won?
    #Your `#won?` method should return false/nil if there is no win combination present in the board and return the winning combination indexes as an #array if there is a win. Use your `WIN_COMBINATIONS` constant in this method.

  end 
  
  def full?
    @board.all?{|character| character == "X" || character == "O"}
  end 
  
  def draw?
    if !(won?) && (full?)
      true
    elsif 
      !(won?) 
      false 
    end
  end 
      
    #Build a method `#draw?` that returns `true` if the board is full and has not been won, `false` if the board is won, and `false` if the board is #neither won nor full.
  
  def over?
    #Build a method `#over?` that returns true if the board has been won or is full (i.e., is a draw).

  end 
  
  def winner 
    #Given a winning `@board`, the `#winner` method should return the token, `"X"` or `"O"`, that has won the game.

  end 
  
  def play
    # #The play method is the main method of the Tic Tac Toe application and is responsible for the game loop. A Tic Tac Toe game must allow players
    # to take turns, checking if the game is over after every turn. At the conclusion of the game, whether because it was won or ended in a draw,
    # the game should report to the user the outcome of the game. 
  end 
  
end