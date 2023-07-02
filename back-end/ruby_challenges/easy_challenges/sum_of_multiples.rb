class SumOfMultiples
  attr_reader :numbers

  def initialize(*numbers)
    @numbers = (numbers.size > 0) ? numbers : [3, 5]
  end

  def to(limit)
    multiples = []
    (1...limit).each do |current_num|
      numbers.each do |num|
        multiple = current_num * num
        multiples << multiple if multiple < limit
      end
    end
    multiples.uniq.sum
  end

  def self.to(limit)
    SumOfMultiples.new().to(limit)
  end
end