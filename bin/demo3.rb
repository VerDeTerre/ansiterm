require 'ansillary/color'

include Ansillary

cyan { "This will look strange unless your terminal supports xterm colors\n\n" }

(0..255).each do |code|
    writeln if code > 0 && code % 16 == 0
    sgr(1).sgr(38, 5, code) { '.' }
end.writeln
