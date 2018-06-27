def string_chop(suey)
    cut = suey.byteslice(-1)
    suey = suey.delete cut
    suey
end