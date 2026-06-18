def ctof(number)
    if number == 0
        32
    else
    number * (9.0 / 5.0) + 32
    end
end

def ftoc(number)
    if number == 32
        0
    else
         (number - 32) * (5.0 / 9.0)
    end
end