def echo(message)
    "#{message}"
end

def shout(message)
    "#{message.upcase!}"
end

# def repeat(message)
#     "#{message} #{message}"
# end

def repeat(message,times=1)
    i = 0
    origMessage = message
    while i<=times
        message =  " #{origMessage}"*times
        i = i + 1
    end
    message
end