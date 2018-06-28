def string_chop(suey)
    cut = suey.byteslice(-1)
    suey = suey.delete cut
    suey
end

def hash_compact(kill_nil)
    kill_nil = kill_nil.delete_if {|key, value| value == nil}
    kill_nil
end

def array_shuffle(truffle)
    10.times do
        truffle.push(rand(10))
        truffle.unshift(rand(10))
        truffle.insert(rand(10), rand(10))
    end
    truffle.uniq!
    $truffle = truffle
    $truffle
end