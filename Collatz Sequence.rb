input = File.open("input.txt").readlines[0].split.map(&:to_i)

input.each do |i|
    steps = 0
    until i == 1
        i = (i % 2 == 0) ? i / 2 : 3 * i + 1
        steps += 1
    end
    print "#{steps} "
end