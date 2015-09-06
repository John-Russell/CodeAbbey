input = File.open("input.txt").readlines

input.each do |i|
    shift, string = i.split
    print string.split('').rotate(shift.to_i).join + " "
end