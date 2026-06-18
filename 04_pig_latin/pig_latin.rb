def translate(text)
    pig_latin = ""
    text.split.each do |word|
        if word.start_with?(
            'a', 'e', 'i', 'o', 'u'
        )
            word = word + "ay"
            pig_latin = pig_latin + word + " "
        elsif word.start_with?('qu')
            word = word[2, word.length - 1] + "quay"
            pig_latin = pig_latin + word + " "
        else
            first_letter = word[0]
            second_letter = word[1]
            third_letter = word[2]
            if second_letter == 'q' && third_letter == 'u'
                word = word[3, word.length - 1] + first_letter + "quay"
            elsif ['a', 'e', 'i', 'o', 'u'].include?(first_letter) == false && ['a', 'e', 'i', 'o', 'u'].include?(second_letter) == false && ['a', 'e', 'i', 'o', 'u'].include?(third_letter) == false
                word = word[3, word.length - 1] + first_letter + second_letter + third_letter + "ay"
            elsif ['a', 'e', 'i', 'o', 'u'].include?(first_letter) == false && ['a', 'e', 'i', 'o', 'u'].include?(second_letter) == false
                word = word[2, word.length - 1] + first_letter + second_letter + "ay"
            else
                word = word[1, word.length - 1] + first_letter + "ay"
            end
            pig_latin = pig_latin + word + " "
        end
    end
    pig_latin.strip
end