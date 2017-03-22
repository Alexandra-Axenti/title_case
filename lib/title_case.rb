class String
    define_method(:title_case) do
      split_sentence = self.split()
      no_capitalize_words = ['a', 'an', 'the', 'at', 'by', 'for', 'in', 'of', 'on', 'to', 'up', 'and', 'as', 'but', 'or', 'it', 'nor', 'from', 'into', 'onto', 'over', 'with', 'once', 'so', 'than', 'that', 'till']
      split_sentence.each() do |word|
        if ((split_sentence.index(word).==0).|(split_sentence.index(word).==(split_sentence.length-1)).|!(no_capitalize_words.include?(word)))
          word.capitalize!()
        else
          word.downcase!()
        end
      end
      split_sentence.join(" ")
    end
  end
