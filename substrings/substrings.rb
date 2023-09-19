def substrings(text, dictionary)

    # Check for correct parameter
    if !text.is_a?(String) || !dictionary.is_a?(Array)
        puts 'Correct using -> substrings(strings, dictionary)'
        return
    end

    # Define new Hash
    hash = {}

    # Iterate over each word
    dictionary.each do |word|
        counter = 0
        text.each_char do |char|

            # Downcase both word and char
            char = char.downcase
            word = word.downcase

            if char == word[counter]
                if counter == word.length - 1
                    hash.include?(word) ? hash[word] += 1 : hash[word] = 1
                end
                counter += 1
            else 
                counter = 0 
            end
        end
    end

    # Print and return has
    puts hash
    return hash

end