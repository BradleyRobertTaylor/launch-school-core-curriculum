def word_count(string)
  string.split(' ').count
end

def split_sentences(paragraphs)
  sentences = paragraphs.split('. ')
  sentences = sentences.map { |sentence| sentence.split('! ') }.flatten
  sentences.map { |sentence| sentence.split('? ') }.flatten
end

text = File.read('sample_text.txt')

sentences = split_sentences(text)

longest_sentence = sentences.sort_by { |sentence| sentence.length }[-1]
puts "Longest sentence is: #{longest_sentence.split.join(' ')}"
puts "There are #{word_count(longest_sentence)} words"

# text = File.read('sample_text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"


