input = File.open("input.txt").readlines.map(&:to_i)

fib = [0, 1]
(2..1000).each { |i| fib.push(fib[i - 1]+ fib[i - 2]) }
input.each { |n| print fib.index(n).to_s + " " }