# Program that can tell whether a number is perfect, abundant, or deficient based
# on a classification scheme by the Greek mathemamtician Nicomachus.

class PerfectNumber
  def self.classify(num)
    raise StandardError.new("Not a valid number.") if num <= 0

    if aliquot_sum(num) == num
      'perfect'
    elsif aliquot_sum(num) > num
      'abundant'
    else
      'deficient'
    end
  end

  private

  def self.aliquot_sum(num)
    sum = 0
    (1...num).each do |divisor|
      sum += divisor if num % divisor == 0
    end
    sum
  end
end