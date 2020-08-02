# Your code goes here!
require 'pry'
class Anagram
attr_reader :word

    def initialize(word)
        @word = word
        @letters = word.chars
    end

    def match(array_in)
        array_out = []
        yes_no = []
        array_in.each do |a_word|
            letter_array = a_word.chars
            @letters.each do |letter|
                x = letter_array.find{ |y| y == letter}
                if x != nil
                    letter_array.delete_at(letter_array.index(x))
                    yes_no << true
                else
                    yes_no << false
                end
            end
            if letter_array != []
                yes_no << false
            end
            unless yes_no.include?(false)
                array_out  << a_word
            end
            yes_no = []
        end
        array_out
    end


end

