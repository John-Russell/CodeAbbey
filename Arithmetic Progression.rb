input = File.open("input.txt").readlines

input[1..-1].each do |s|
    a, b, n = s.split
    a, b, n = a.to_i, b.to_i, n.to_i
    sum = a
    for i in 1..n - 1
        sum = sum + (a + i * b)
    end
    print sum.to_s + " "
end