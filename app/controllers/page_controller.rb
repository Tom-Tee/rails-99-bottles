class PageController < ApplicationController

def home
  @beer = bottles_of_beer(99)
end

def bottles_of_beer(x)
  number = x
  string = ""
  until number == 0
  string << "#{number} #{pluralize_bottle(number)} of beer on the wall,\
  #{number} #{pluralize_bottle(number)} of beer!\
  Take one down,\
  Pass it around,\
  #{number-1} #{pluralize_bottle(number-1)} of beer on the wall! <br>"
  number -=1
  end
  string
end

def pluralize_bottle(number)
  return 'bottle'.pluralize(number)
end

# One-hundred bottles of beer on the wall,
# One-hundred bottles of beer!
# Take one down,
# Pass it around,
# Ninety-nine bottles of beer on the wall!

# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer!
# Take one down,
# Pass it around,
# Ninety-eight bottles of beer on the wall!

end
