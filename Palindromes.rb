input = File.open("input.txt").readlines.each { |s| s.downcase!.gsub!(/[^0-9a-z]/i, '') }
input.each { |s| print (s.reverse == s) ? "Y " : "N " }