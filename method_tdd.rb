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

end