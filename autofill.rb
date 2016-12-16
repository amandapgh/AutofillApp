class WordDictionary
    
    def initialize 
        @dictionary = Array.new
    end 
    
    def add_words(words)
        words = words.split ", "
        words.each do |word|
            @dictionary << word
        end
    end
    
    def is_word?(search)
        @dictionary.each do |i|
            if search != i
                return false 
            elsif search == i
                return true 
            end
        end
    end 
    
    def possible_words(fragment)
            split_fragment = fragment.split(//)
            number = split_fragment.count 
            word_array = Array.new
            @dictionary.each do |i|
                word_fragment = ""
                new_var = i.split(//)
                a = 0
                while a < number do
                    word_fragment += new_var[a]
                    a += 1
                end
                if fragment == word_fragment
                    word_array << i 
                end
            end
            return word_array
        end 
    end 

autofill = WordDictionary.new 
puts autofill.add_words("blah, blue, meow")
puts autofill.is_word?("blah")
puts autofill.possible_words("bl")