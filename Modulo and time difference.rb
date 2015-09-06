input = File.open("input.txt").readlines

input.each do |l|
    date1 = l.split.map(&:to_i)[0..3]
    date2 = l.split.map(&:to_i)[4..-1]
    date1 = date1[0] * 86400 + date1[1] * 3600 + date1[2] * 60 + date1[3]
    date2 = date2[0] * 86400 + date2[1] * 3600 + date2[2] * 60 + date2[3]
    print "(%s %s %s %s) " % [((date2 - date1) / 86400) % 31, ((date2 - date1) / 3600) % 24, 
                              ((date2 - date1) / 60) % 60, (date2 - date1) % 60]
end