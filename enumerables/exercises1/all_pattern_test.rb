gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AllPatternTest < Minitest::Test

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    assert all_zeros
  end

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    refute all_zeros
  end

  def test_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = true
    words.each do |word|
      all_gone = false unless word == 'gone'
    end
    assert all_gone
  end

  def test_not_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    all_gone = true
    words.each do |word|
      all_gone = false unless word != 'gone'
    end
    refute all_gone
  end

  def test_all_empty
    strings = ["", "", "", "", "", "", ""]
    all_empty = true
    strings.each do |string|
      all_empty = false unless string.empty?
    end
    assert all_empty
  end

  def test_not_all_empty
    skip
    strings = ["", "", "", "full", "", "", ""]
    # Your code goes here
    refute all_empty
  end

  def test_not_all_uppercase
    skip
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    # Your code goes here
    refute all_caps
  end

  def test_all_lies
    skip
    lies = [false, false, false, false]
    # Your code goes here
    assert all_lies
  end

  def test_all_multiples_of_7
    skip
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    # Your code goes here
    assert all_multiples_of_7
  end

  def test_not_all_3_digits_long
    skip
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    # Your code goes here
    refute all_3_digits
  end

  def test_all_4_letter_words
    skip
    words = ["love", "hate", "fire", "bird", "call"]
    # Your code goes here
    assert all_4_letters
  end

end
