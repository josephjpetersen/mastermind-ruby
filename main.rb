require_relative "./game.rb"
require_relative "./modules.rb"
include Clear
include RandomCode

def introduction
  clear
  puts "Welcome to ~* M A S T E R M I N D *~"
  puts ""
  puts "Mastermind is a code-breaking game played by two players."
  puts "You can choose to be the code-MAKER or the code-BREAKER. The computer will take the other role."
  puts ""
  puts "The code-breaker has 12 tries to break the code set by the code-maker."
end

introduction
Mastermind.new.maker_or_breaker

