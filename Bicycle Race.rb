input = File.open("input.txt").readlines

input.each do |i|
    dist, aspeed, bspeed = i.split.map(&:to_i)
    print "#{(dist.to_f / (aspeed + bspeed).to_f) * aspeed.to_f} "
end