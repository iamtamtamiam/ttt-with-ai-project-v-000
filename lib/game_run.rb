
#class Greeting 
#
#  puts "Welcome! Please select what game version you would like to play."
#  puts "If you would like to play computer vs. computer, please enter 0"
#  puts "If you would like to play human vs. computer, please enter 1"
#  puts "If you would like to play human vs. human, please enter 2"
#  
#  game_choice = gets.strip.to_i 
#  
#
#  def game_type(game_choice)  
#    case game_choice
#      when 0 
#      
#      when 1 
#        
#      when 2 
#        Game.new.play
#      else 
#        puts "You entered an error. Please put in a valid response."
#        Greeting.new
#      end
#  end 
#
#  self.game_type(game_choice)
#  
#
#
#end 


require "pry" 

class Run_controller 
  def initialize 
    @game_choice = "" 
    greeting
  end 
  
  def greeting 
    puts "Welcome! Please select what game version you would like to play." 
    puts "If you would like to play computer vs. computer, please enter 0" 
    puts "If you would like to play human vs. computer, please enter 1" 
    puts "If you would like to play human vs. human, please enter 2" 
    @game_choice = gets.strip #user input for 0,1,2 
    game_type(@game_choice)
  end 
    
  def game_type(var) 
    case var 
      when "0" 
        Game.new(player_1 = Players::Computer.new("X"), player_2 = Players::Computer.new("O"), board = Board.new).play
        #binding.pry 
      when "1" 
        puts "Who should go first? Please enter 'h' for human or 'c' for computer"
        first_player = gets.strip.downcase
          if first_player == "h".downcase
            Game.new(player_1 = Players::Human.new("X"), player_2 = Players::Computer.new("O"), board = Board.new).play
          else first_player == "c".downcase
            Game.new(player_1 = Players::Computer.new("X"), player_2 = Players::Human.new("O"), board = Board.new).play
          end #need to consider downcase/ case sensitive
          #needs to either exit or repeat puts line if invalid response 
          
      when "2" 
        puts "Player 1 will be 'X' and Player 2 will be 'O'."
        Game.new.play 
      else 
        puts "You entered an error. Please put in a valid response." 
        greeting 
    end 
  end
  
  
end 