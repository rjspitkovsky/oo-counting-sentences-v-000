require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split(".!?")
    count = array.count

    array.each do |phrase|
      if phrase.end_with(".?!")
        count += 1
      end
    end 
      count
  end
end
