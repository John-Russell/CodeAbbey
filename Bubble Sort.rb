input = File.open("input.txt").readlines[0].split.map(&:to_i)
passes = 0
swaps  = 0

loop do
    swapped = false
    (input.length - 1).times do |i|
        if input[i] > input[i + 1]
            input[i], input[i + 1] = input[i + 1], input[i]
            swaps = swaps + 1
            swapped = true
        end
    end
    passes = passes + 1
    break if not swapped
end

print passes.to_s + " " + swaps.to_s