# frozen_string_literal: true

class Bottles
  def song
    verses(99,0)
  end

  def verses(start_number_of_bottles, end_number_of_bottles)
    song = ""
    start_number_of_bottles.step(end_number_of_bottles, -1) do |number_of_bottles|
      song += verse(number_of_bottles) + add_endline(end_number_of_bottles, number_of_bottles)
    end
    song
  end

  def verse(number_of_bottles)
    return zero_verse if number_of_bottles == 0
    return one_bottle_verse if number_of_bottles == 1
    return two_bottle_verse if number_of_bottles == 2
    regular_verse(number_of_bottles)
  end

  def regular_verse(number_of_bottles)
    "#{number_of_bottles} bottles of beer on the wall, " +
    "#{number_of_bottles} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{number_of_bottles - 1} bottles of beer on the wall.\n"
  end

  def two_bottle_verse
    "2 bottles of beer on the wall, " +
    "2 bottles of beer.\n" +
    "Take one down and pass it around, " +
    "1 bottle of beer on the wall.\n"
  end

  def one_bottle_verse
    "1 bottle of beer on the wall, " +
    "1 bottle of beer.\n" +
    "Take it down and pass it around, " +
    "no more bottles of beer on the wall.\n"
  end

  def zero_verse
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end

  private def add_endline(end_number_of_bottles, number_of_bottles)
    number_of_bottles != end_number_of_bottles ? "\n" : ""
  end
end
