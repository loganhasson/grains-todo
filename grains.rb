# There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. One grain on the first square of a chess board. Two grains on the next. Four on the third, and so on.

# There are 64 squares on a chessboard.

# Write a program that shows
# - how many grains were on each square, and
# - the total number of grains

# ## For bonus points

# Did you get the tests passing and the code clean? If you want to, these are some additional things you could try:

# * Optimize for speed.
# * Optimize for readability.

# Then please share your thoughts in a comment on the submission. Did this experiment make the code better? Worse? Did you learn anything from it?

class Grains

  def square(num)
    2**(num-1)
  end

  def total
    sum = 0

    (1..64).each do |i|
      sum += square(i)
    end

    sum
  end
end

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true
 
  # Use color not only in STDOUT but also in pagers and files
  config.tty = true
 
  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end

describe Grains do

  it 'has square_1' do
    Grains.new.square(1).should == 1
  end

  it 'has square_2' do
    Grains.new.square(2).should == 2
  end

  it 'has square_3' do
    Grains.new.square(3).should == 4
  end

  it 'has square_4' do
    Grains.new.square(4).should == 8
  end

  it 'has square_16' do
    Grains.new.square(16).should == 32768
  end

  it 'has square_32' do
    Grains.new.square(32).should == 2147483648
  end

  it 'has square_64' do
    Grains.new.square(64).should == 9223372036854775808
  end

  it 'has total_grains' do
    Grains.new.total.should == 18446744073709551615
  end

end