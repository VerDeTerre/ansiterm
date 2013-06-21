require 'ansillary'

module Ansillary
    def bold(&block)
        sgr(1, &block)
    end

    def underscore(&block)
        sgr(4, &block)
    end

    def blink(&block)
        sgr(5, &block)
    end

    def reverse(&block)
        sgr(7, &block)
    end

    def conceal(&block)
        sgr(8, &block)
    end
end
