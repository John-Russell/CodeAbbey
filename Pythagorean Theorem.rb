input  = File.open("input.txt").readlines

input.each do |l|
    a, b, c = l.split.map(&:to_i)
    asbs, cs = a ** 2 + b ** 2, c ** 2
    print asbs > cs ? "A " :
          asbs < cs ? "O " :
                      "R "
end