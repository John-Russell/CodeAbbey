input = File.open("input.txt").readlines

input.each do |l|
    x1, y1, x2, y2 = l.split.map(&:to_i)
    a = (y2 - y1) / (x2 - x1)
    b = y1 - (a * x1)
    print "(%s %s) " % [a, b]
end