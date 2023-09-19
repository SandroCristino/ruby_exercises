def substrings(text, dictionary)

    # Check for correct parameter
    if !text.is_a?(String) || !dictionary.is_a?(Array)
        puts 'Correct using -> substrings(strings, dictionary)'
        return
    end

    # Define new Hash
    hash = Hash.new(0)
    text = text.downcase

    # Iterate over each word
    dictionary.each do |word|
        matches = text.scan(word).length
        hash[word] = matches unless matches == 0
    end

    # Print and return has
    puts hash
    return hash

end