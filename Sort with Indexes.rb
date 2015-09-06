input = File.open("input.txt").readlines[0].split.map(&:to_i)
input.sort.each { |i| print "#{input.index(i) + 1} " }