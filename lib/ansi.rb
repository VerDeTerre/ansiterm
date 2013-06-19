module ANSI extend self
    def immediate_mode!
        @mode = :immediate
    end

    def string_mode!
        @mode = :string
    end

    def cuu(n=nil)
        output('A', n)
    end

    def cud(n=nil)
        output('B', n)
    end

    def cuf(n=nil)
        output('C', n)
    end

    def cub(n=nil)
        output('D', n)
    end

    def cnl(n=nil)
        output('E', n)
    end

    def cpl(n=nil)
        output('F', n)
    end

    def cha(n=nil)
        output('G', n)
    end

    def cup(n='', m=nil)
        output('H', n, m)
    end

    def ed(n=nil)
        output('J', n)
    end

    def el(n=nil)
        output('K', n)
    end

    def su(n=nil)
        output('S', n)
    end

    def sd(n=nil)
        output('T', n)
    end

    def hvp(n=nil, m=nil)
        output('f', n, m)
    end

    def sgr(*args)
        s = sequence('m', args)
        if block_given?
            s += yield + sequence('m')
        end

        if @mode == :string
            s
        else
            print(s)
            self
        end
    end

    def dsr
        output('n', 6)
    end

    def scp
        output('s')
    end

    def rcp
        output('u')
    end

    private

    CSI = "\u001b["

    def sequence(command, *args)
        "#{CSI}#{args.compact.join(';')}#{command}"
    end

    def output(command, *args)
        s = sequence(command, *args)
        if @mode == :string
            s
        else
            print(s)
            self
        end
    end
end
