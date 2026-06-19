class Temperature

    def initialize(options ={})
        # puts options
        # puts options[:f]
        @options = options
    end

    def in_fahrenheit
        if !@options[:f].nil?
            @options[:f]
        elsif !@options[:c].nil?
           if @options[:c] == 0
                32
           else
                @options[:c] * (9.0 / 5.0) + 32
           end
        end
    end

    def in_celsius
        if !@options[:c].nil?
            @options[:c]
        elsif !@options[:f].nil?
           if @options[:f] == 32
                0
           else
                (@options[:f] - 32) * (5.0 / 9.0)
           end
        end
    end


    def self.from_celsius(value)
    end

    def self.in_celsius
    end
end
