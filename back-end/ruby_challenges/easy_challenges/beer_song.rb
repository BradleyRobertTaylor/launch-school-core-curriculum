class BeerSong
  def self.lyrics
    lyrics = ''
    99.downto(0).each do |num|
      num > 0 ? lyrics << verse(num) + "\n" : lyrics << verse(num)
    end
    lyrics
  end

  def self.verse(num)
    case num
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "#{num} bottle of beer on the wall, #{num} bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 2
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num-1} bottle of beer on the wall.\n"
    else
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num-1} bottles of beer on the wall.\n"
    end
  end

  def self.verses(first, last)
    result = []

    first.downto(last).each do |num|
      result << verse(num)
    end

    result.join("\n")
  end
end


