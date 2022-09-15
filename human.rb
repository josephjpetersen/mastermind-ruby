class HumanPlayer
  attr_accessor :breaker, :maker, :guess, :code

  def initialize
    @breaker = false
    @maker = false
    @guess = []
    @code = []
  end

  def get_player_guess
    puts "Enter 4 numbers between 1 and 6:"

    @guess = gets.chomp.split('').map(&:to_i)
  end
end