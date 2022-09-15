module Clear
  def clear
    print "\033[2J\033[H"
  end
end

module RandomCode
  def random_code
    code = []
    for i in 1..4 do
      code << rand(1..6)
    end
    code
  end
end

module Introduction
  include Clear
  
  def introduction
    clear
    puts "Welcome to ~* M A S T E R M I N D *~"
    puts ""
    puts "Mastermind is a code-breaking game played by two players."
    puts "You can choose to be the code-MAKER or the code-BREAKER. The computer will take the other role."
    puts ""
    puts "The code-breaker has 12 tries to break the code set by the code-maker."
  end
end