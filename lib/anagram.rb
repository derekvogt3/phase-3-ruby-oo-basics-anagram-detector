# Your code goes here!
require "pry"

class Anagram



    def initialize(word)

        @word = word

    end

    def match(array)

        match_array = Array.new

        sorted_word = merge_sort(@word)



        array.each {|item| 

            sorted_item = merge_sort(item)

            if sorted_word == sorted_item 

                match_array.push(item)

            end
        
        }

        return match_array

        
    end

    def merge_sort(str)
        if str.length < 2
            return str
        end
    
        mid = str.length/2
    
        left = str[0..mid-1]
    
        right = str[mid..str.length-1]
    
    
        sortedRight = self.merge_sort(right) 
        sortedLeft = self.merge_sort(left)
        merge_array(sortedLeft,sortedRight)
    
    end 
    
    def merge_array(left, right)
    
        new_str = ""
    
    
        while left.length > 0 && right.length > 0

            
            if left[0] < right[0]
                new_str = new_str + left.chr
                left.slice!(0)
    
            else 
                new_str = new_str + right.chr
                right.slice!(0)
            
            end
        
        end
    
        return new_str + left + right
    
        
    
    end



end
