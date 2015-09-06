input = File.open("input.txt").readlines[0]

input.split.map(&:to_i).each do |i|
    numbers = [i.to_s]
    repeat = false
    loops = 0
    newnum = i ** 2
    
    until repeat
        newnum = newnum.to_i ** 2 if loops > 0
        newnum = newnum.to_s.rjust(8, "0")[2..5]
        loops += 1
        repeat = numbers.include?(newnum)
        numbers.push(newnum)
    end
    print "#{loops} "
end