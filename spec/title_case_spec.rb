require('rspec')
  require('title_case')
  require('pry')


  describe('title_case') do
    it("capitalizes the first letter of a word") do
      expect(("beowulf").title_case).to eq("Beowulf")
    end

    it("capitalizes the first letter of all words in a multiple word title") do
      expect(("the color purple").title_case).to eq("The Color Purple")
    end

    it("leaves link words such as 'a' and 'and' in lower case if it is not the first or last word") do
      expect(("i bought an apple and a pen, but i wanted to buy the grapes most!").title_case).to eq("I Bought an Apple and a Pen, but I Wanted to Buy the Grapes Most!")
    end
  end
