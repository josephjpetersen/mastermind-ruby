require "colorize"
require_relative "./human.rb"
require_relative "./computer.rb"

class Mastermind
  def initialize
    @human = HumanPlayer.new
    @computer = ComputerPlayer.new
  end

  def maker_or_breaker
    @selection_made = false

    puts "Would you like to the the code-maker or the code-breaker?"
    puts ""
    puts "Code-MAKER   - 1"
    puts "Code-BREAKER - 2"

    until @selection_made
      selection = gets.chomp.to_i

      if selection == 1
        @human.maker = true
        @computer.breaker = true
        @selection_made = true
      elsif selection == 2
        @human.breaker = true
        @computer.maker = true
        @selection_made = true
      else
        next
      end
    end
  end

  def play_game

  end
end