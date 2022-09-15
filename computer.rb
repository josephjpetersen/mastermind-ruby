require_relative "./modules"

include RandomCode

class ComputerPlayer
  attr_accessor :breaker, :maker
  
  def initialize
    @breaker = false
    @maker = false
  end

  def maker_choice
    return @maker_choice = random_code
  end
end