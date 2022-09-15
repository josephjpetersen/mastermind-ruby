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