def string_chop(suey)
    cut = suey.byteslice(-1)
    suey = suey.delete cut
    suey
end

def hash_compact(kill_nil)
    kill_nil = kill_nil.delete_if {|key, value| value == nil}
    kill_nil
end