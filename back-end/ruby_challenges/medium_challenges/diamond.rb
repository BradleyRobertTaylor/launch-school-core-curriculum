class Diamond
  def self.make_diamond(input_letter)
    letters = ('A'...input_letter).to_a + ('A'..input_letter).to_a.reverse
    diamond_width = width(input_letter)

    letters.each_with_object([]) do |letter, arr|
      arr << create_row(letter).center(diamond_width)
    end.join("\n") + "\n"
  end

  class << self
    private

    def create_row(letter)
      return 'A' if letter == 'A'

      letter + determine_spaces(letter) + letter
    end

    def width(letter)
      return 1 if letter == 'A'

      determine_spaces(letter).count(' ') + 2
    end

    def determine_spaces(letter)
      return '' if letter == 'A'

      letters = ('B'..'Z').to_a
      spaces = []
      count = 1

      while letters.size > spaces.size
        spaces << count
        count += 2
      end

      ' ' * spaces[letters.index(letter)]
    end
  end
end
