class Timer
    # @@seconds = 0.0
    # def seconds=(seconds = 0.0)
    #     @@seconds = seconds
    # end

    # def seconds
    #     @@seconds
    # end

    attr_accessor :seconds

    def initialize
        @seconds = 0
    end

    def padded(number)
        if number < 10
            "0#{number}"
        else
            "#{number}"
        end
    end

    def time_string
        hours = @seconds / 3600
        minutes = (@seconds % 3600) / 60
        seconds = @seconds % 60
        "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
    end
end