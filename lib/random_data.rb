module RandomData

    def random_paragraph
      sentences = []
      rand(4..6).times do
        sentences << random_sentence
      end

      sentences.join(" ")
    end

    def random_sentence
      strings = []
      rand(3..8).times do
        strings << random_word
      end

      sentence = strings.join(" ")
      sentence.capitalize << "."
    end

    def random_word
      letters = ('a'..'z').to_a
      letters.shuffle!
      letters[0,rand(3..8)].join
    end

    def random_copy
    end

    def random_price
      numbers = (1..9).to_a
      numbers.shuffle!
      numbers[0,1].join + "." + numbers[2,3].join
      #how to move decimal over two spaces left?
    end
  end
