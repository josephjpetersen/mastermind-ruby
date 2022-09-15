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

    if @human.maker == true
      play_maker_game
    else
      play_breaker_game
    end
  end

  def play_maker_game

  end

  def play_breaker_game
    @solution = @computer.maker_choice
    @correct = false
    @tries = 1

    until @correct || @tries == 13
      @comparison_array = @solution.clone
      @clues = []

      puts ""
      puts "Attempt ##{@tries}:"

      @guess = @human.get_player_guess

      if @guess.length != 4 || @guess.any? { |i| i > 6} || @guess.any? { |i| i < 1 }
        puts ""
        puts "Let's try that again."
        next
      end

      if @guess == @comparison_array
        @correct = true
        puts "Congrats! You figured out the code!"
        break
      end
      
      @guess.each_with_index do |number, index|
        if number == @comparison_array[index]
          @guess.delete_at(index)
          @comparison_array.delete_at(index)
          @clues << "*"
        end
      end

      @guess.each do |number|
        if @comparison_array.include?(number)
          @clues << "~"
        end
      end

      puts "Clues: " + @clues.join
      puts ""
      puts "-----------------------------------"

      if @tries == 12
        puts ""
        puts "After 12 tries, you haven't busted the code. Better luck next time!"
      end

      @tries += 1
    end
  end
end