def measure(n = 1)
    started = Time.now
    n.times{
         yield
         }
    ended = Time.now
    (ended - started)/n.to_f
end