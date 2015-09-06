input = File.open("input.txt").read.split(/ /).map(&:to_f)
answers = ["#{input[0]} "]
(1..input.length - 2).each { |i| answers.push(((input[i - 1] + input[i] + input[i + 1]) / 3.0).to_s) }
answers.push(["#{input[-1]} "])
print answers.join(' ')