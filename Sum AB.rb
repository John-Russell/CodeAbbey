input = File.open("input.txt").readlines[0].split.map(&:to_i)
puts input.inject(:+)