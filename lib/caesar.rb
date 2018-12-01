def caesar_encode(input, offset)
    alphabets = [*('a'..'z')]
    input.split("").map do |character|
        if character =~ /[[:alpha:]]/
            if character == character.upcase
                alphabets[((alphabets.index(character.downcase)) + offset) % 26].upcase
            else
                alphabets[((alphabets.index(character)) + offset) % 26]
            end
        else
            character
        end
    end.join
end

def caesar_decode(input, offset)
    alphabets = [*('a'..'z')]
    input.split("").map do |character|
        if character =~ /[[:alpha:]]/
            if character == character.upcase
                alphabets[((alphabets.index(character.downcase)) - offset) % 26].upcase
            else
                alphabets[((alphabets.index(character)) - offset) % 26]
            end
        else
            character
        end
    end.join
end