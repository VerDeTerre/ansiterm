module Ansillary extend self
    def immediate_mode!
        @mode = :immediate
        self
    end

    def string_mode!
        @mode = :string
        self
    end

    def cuu(n=nil)
        csi('A', n)
    end

    def cud(n=nil)
        csi('B', n)
    end

    def cuf(n=nil)
        csi('C', n)
    end

    def cub(n=nil)
        csi('D', n)
    end

    def cnl(n=nil)
        csi('E', n)
    end

    def cpl(n=nil)
        csi('F', n)
    end

    def cha(n=nil)
        csi('G', n)
    end

    def cup(n='', m=nil)
        csi('H', n, m)
    end

    def ed(n=nil)
        csi('J', n)
    end

    def el(n=nil)
        csi('K', n)
    end

    def su(n=nil)
        csi('S', n)
    end

    def sd(n=nil)
        csi('T', n)
    end

    def hvp(n=nil, m=nil)
        csi('f', n, m)
    end

    def sgr(*args)
        s = csi_sequence('m', args)
        if block_given?
            s += yield + csi_sequence('m')
        end

        if @mode == :string
            s
        else
            print(s)
            self
        end
    end

    def dsr
        csi('n', 6)
    end

    def scp
        csi('s')
    end

    def rcp
        csi('u')
    end

    def reset
        sgr
    end

    def write(s='')
        if @mode == :string
            s
        else
            print(s)
            self
        end
    end

    def writeln(s='')
        write(s + "\n")
    end

    def c1(command)
        output("\e#{command}")
    end

    def csi(command, *args)
        output(csi_sequence(command, *args))
    end

    private

    CSI = "\e["

    def csi_sequence(command, *args)
        "#{CSI}#{args.compact.join(';')}#{command}"
    end

    def output(sequence)
        if @mode == :string
            sequence
        else
            print(sequence)
            self
        end
    end
end
