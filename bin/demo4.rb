require 'ansiterm/color'

class Colorizer
    include Ansiterm
end

c1 = Colorizer.new
c2 = Colorizer.new.string_mode!

c1.cyan { "Hello, how are " }.green { "you" }.cyan { "?" }.writeln
puts c2.cyan + "I am fine, thank " + c2.green + "you" + c2.cyan + "!" + c2.reset
