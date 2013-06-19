require 'ansillary/color'

include Ansillary

[:red, :green, :yellow, :blue, :magenta, :cyan, :white].each do |color|
    __send__(color) { "Hello!\n" }
end

cuu(6).cuf(20).green { "green!" }.cnl(6).sgr(31, 1, 5, 7) { "bLInK\n" }

string_mode!
puts "this is " + cyan { "string" } + " mode\n"

immediate_mode!
sgr(35, 1) { "back to immediate mode\n" }
