def caesar_cipher(text, key)

    # Check if parameter are correct
    if !text.is_a?(String) || !key.is_a?(Numeric)
        puts 'Correct using -> casear_cipher(String, Number)'
        return
    end

    # Create new string to return
    new_string = ''

    # Iterate throw every single char
    text.each_char do |char|
        if char == ' '
            new_string = new_string + ' '
            next
        end 
        new_char = char.ord - 65
        
        final_char = new_char + key

        if new_char <= 25 && final_char > 25
            final_char -= 26
        elsif new_char > 25 && final_char > 57
            final_char -= 26
        end

        # if new_char > 25
        #     new_char -= 25
        # end

        final_char += 65
        new_string = new_string + final_char.chr
    end

    puts new_string
    return new_string
end

caesar_cipher('Zero water',10)