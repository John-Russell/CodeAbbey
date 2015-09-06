input = File.open("input.txt").readlines

input.each do |b|
    a, b, c = b.split.map(&:to_i)
    print ((a + b > c and a + c > b and b + c > a) ? "1" : "0") + " "
end