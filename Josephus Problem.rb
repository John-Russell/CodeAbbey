input  = File.open("input.txt").read.split.map(&:to_i)
people = (1..input[0]).to_a

people.rotate!(input[1] - 1).shift until people.length == 1
print people[0]