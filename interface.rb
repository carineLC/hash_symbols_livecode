require_relative 'frequencies.rb'

text = File.read('article.txt').strip # removed whitespace (example: \n)
words = frequencies(text)

words.sort_by { |_word, nb| nb }.reverse.each do |w, f|
  puts "-#{w} : #{f}"
end

# words = filter(words)
