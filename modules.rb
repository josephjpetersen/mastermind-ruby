module Clear
  def clear
    print "\033[2J\033[H"
  end
end

module RandomCode
  def random_code
    code = []
    4.times do
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
    puts "The code is 4 numbers between 1 and 6."
    puts ""
    puts "'o' indicates a correct number in the correct position."
    puts "'x' indicates a correct number in the incorrect position"
    puts ""
  end
end
