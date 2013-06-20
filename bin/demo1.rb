require 'ansillary/color'

include Ansillary

[:red, :green, :yellow, :blue, :magenta, :cyan, :white].each do |color|
    __send__(color) { "Hello!\n" }
end

cuu(7).cuf(7).sgr(1).red { "<-- red" }.cnl.cuf(7).sgr(1).green { "<-- green" }.cnl.cuf(7).sgr(1).yellow { "<-- yellow" }.cnl(5)

yellow { "don't " }.sgr(35, 1, 5, 7) { "BLINK" }.yellow { " or you might miss it!" }.writeln

string_mode!
puts "this is " + cyan { "string" } + " mode\n"

immediate_mode!
write("and this is ").sgr(35, 1) { "immediate" }.writeln(" mode again")
