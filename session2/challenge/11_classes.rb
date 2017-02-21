# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  attr_accessor :bottles

  def initialize(bottles)
    if bottles < 0
      bottles = 0
    elsif bottles > 99
      bottles = 99
    end

    @bottles = bottles
  end

  def print_song
    while bottles > 0
    	puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
    	bottles = bottles - 1
    	puts "Take one down and pass it around, #{bottles} bottles of beer on the wall."
    	puts ''
    	if bottles == 0
    		puts 'No more bottles of beer on the wall, no more bottles of beer.'
    		puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    		break
    	end
    end
  end
end
