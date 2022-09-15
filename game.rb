require "colorize"
require_relative "./human.rb"
require_relative "./computer.rb"
require_relative "./modules.rb"

include Introduction

class Mastermind
  def initialize
    @human = HumanPlayer.new
    @computer = ComputerPlayer.new
  end

  def maker_or_breaker
    @selection_made = false

    until @selection_made
      introduction

      puts "Would you like to be the the code-maker or the code-breaker?"
      puts ""
      puts "Code-MAKER   - 1"
      puts "Code-BREAKER - 2"

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