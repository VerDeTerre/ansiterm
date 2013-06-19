require 'ansi/color'

include ANSI

[:red, :green, :yellow, :blue, :magenta, :cyan, :white].each do |color|
    __send__(color) { puts "Hello!" }
end

cuu(6).cuf(20).green { print "green!" }.cnl(6).sgr(31, 1, 5, 7) { puts "bLInK" }
