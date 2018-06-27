require "minitest/autorun"
require_relative "method.rb"

class TestMethod < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

end