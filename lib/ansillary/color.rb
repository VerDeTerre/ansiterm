require 'ansillary'

module Ansillary
    def black(&block)
        sgr(30, &block)
    end

    def red(&block)
        sgr(31, &block)
    end

    def green(&block)
        sgr(32, &block)
    end

    def yellow(&block)
        sgr(33, &block)
    end

    def blue(&block)
        sgr(34, &block)
    end

    def magenta(&block)
        sgr(35, &block)
    end

    def cyan(&block)
        sgr(36, &block)
    end

    def white(&block)
        sgr(37, &block)
    end
end
