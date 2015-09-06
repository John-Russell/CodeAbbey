input = File.open("input.txt").readlines

start = input[0].to_i
m_amt = input[-1].split(" ")[1].to_i
input = input[1..-1 - 1]

input.each do |i|
    action, number = i.strip.split(" ")
    number = number.to_i
    
    case action
        when '+'
            start = start + number
        when '-'
            start = start - number
        when '*'
            start = start * number
        when '/'
            start = start / number
    end
    start = start % m_amt
end

puts start
