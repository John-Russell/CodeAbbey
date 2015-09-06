input = File.open("input.txt").readlines[0].split(//)
(0..input.size / 2 - 1).each { |n| input[n], input[input.size - 1 - n] = input[input.size - 1 - n], input[n] }
puts input.join