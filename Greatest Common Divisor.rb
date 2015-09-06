input = File.open("input.txt").readlines

input.each do |i|
    a, b = i.split.map(&:to_i)
    print "(%s %s) " % [a.gcd(b), a.lcm(b)]
end