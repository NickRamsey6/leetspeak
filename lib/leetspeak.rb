require ('pry')

class String
  def leetspeak
    leet_speak = []
    input_phrase = self.split
    input_phrase.each do |word|
      leet_word = []
      x = 0
      while (x < word.length)
        if word[x] == "e"
          leet_word.push("3")
        elsif word[x] == "o"
          leet_word.push("0")
        elsif word[x] == "I"
          leet_word.push("1")
        elsif (word[x] == "s") && (x != 0)
          leet_word.push("z")
        else
          leet_word.push(word[x])
        end
        x = x + 1
      end
      leet_speak.push(leet_word.join)
    end
    puts leet_speak.join(" ")
    leet_speak.join(" ")
  end
end

puts 'Enter a word'
input = gets.chomp

input.leetspeak
