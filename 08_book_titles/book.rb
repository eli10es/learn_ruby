class Book
    @title
    def title=(title)
        @title = title
    end

    def title
        @title[0] = @title[0].upcase
        @title.split.each do |word|
            if ["the", "a", "an", "and", "in", "of"].include?(word) == false
                word.capitalize!
            end
        end.join(" ")
    end
end