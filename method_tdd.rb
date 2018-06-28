require "minitest/autorun"
require_relative "method.rb"

class TestMethod < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_string_chop
        assert_equal("Hi guy", string_chop("Hi guy!"))
    end

    def test_string_chop_again
        assert_equal("Why did you put the keys on the table", string_chop("Why did you put the keys on the table?"))
    end

    def test_string_chops_newline
        assert_equal("String", string_chop("String\n"))
    end

    def test_hash_compact!
        assert_equal({a: 3, b: true, d: "nil"}, hash_compact({a: 3, b: true, c: nil, d: "nil"}))
    end

    def test_array_shuffle_includes_0
        assert_equal(true, array_shuffle([0, 1, 2, 3, 4]).include?(0))
    end

    def test_array_shuffle
        mix_alot = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        refute_equal($truffle, array_shuffle(mix_alot))
    end
end