require 'pry'

class Raindrops
  def self.convert(number)
    string = Constructor.new(number).construct_string
  end
end

class Constructor
  attr_reader :number, :string

  def initialize(number)
    @number = number
    @string = ""
  end

  def construct_string
    divisors.each do |divisor|
      add_droplet(divisor)
    end

    return number.to_s if string.empty?
    string
  end

  def add_droplet(divisor)
    if number % divisor == 0
      string << droplet_for_divisor(divisor)
    end
  end

  def droplet_for_divisor(divisor)
    droplet_pairs[divisor]
  end

  def droplet_pairs
    {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }
  end

  def divisors
    droplet_pairs.keys
  end
end
