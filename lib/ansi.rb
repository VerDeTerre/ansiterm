module ANSI extend self
    def cuu(n=nil)
        print_sequence('A', n)
    end

    def cud(n=nil)
        print_sequence('B', n)
    end

    def cuf(n=nil)
        print_sequence('C', n)
    end

    def cub(n=nil)
        print_sequence('D', n)
    end

    def cnl(n=nil)
        print_sequence('E', n)
    end

    def cpl(n=nil)
        print_sequence('F', n)
    end

    def cha(n=nil)
        print_sequence('G', n)
    end

    def cup(n='', m=nil)
        print_sequence('H', n, m)
    end

    def ed(n=nil)
        print_sequence('J', n)
    end

    def el(n=nil)
        print_sequence('K', n)
    end

    def su(n=nil)
        print_sequence('S', n)
    end

    def sd(n=nil)
        print_sequence('T', n)
    end

    def hvp(n=nil, m=nil)
        print_sequence('f', n, m)
    end

    def sgr(*args)
        print_sequence('m', args)
        if block_given?
            yield
            print_sequence('m')
        end
        self
    end

    def dsr
        print_sequence('n', 6)
    end

    def scp
        print_sequence('s')
    end

    def rcp
        print_sequence('u')
    end

    private

    CSI = "\u001b["

    def print_sequence(command, *args)
        print("#{CSI}#{args.compact.join(';')}#{command}")
    end
end
