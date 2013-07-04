require 'ansiterm'

module Ansiterm
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

    def default_fg(&block)
        sgr(39, &block)
    end

    def black_bg(&block)
        sgr(40, &block)
    end

    def red_bg(&block)
        sgr(41, &block)
    end

    def green_bg(&block)
        sgr(42, &block)
    end

    def yellow_bg(&block)
        sgr(43, &block)
    end

    def blue_bg(&block)
        sgr(44, &block)
    end

    def magenta_bg(&block)
        sgr(45, &block)
    end

    def cyan_bg(&block)
        sgr(46, &block)
    end

    def white_bg(&block)
        sgr(47, &block)
    end

    def default_bg(&block)
        sgr(49, &block)
    end
end
