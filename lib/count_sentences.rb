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
    split_sentence = ["#{self}"]
    [".", "?", "!"].each do
      split_sentence.map! {|s| self.split("!")}.flatten
    end
    split_sentence.delete_if { |s| s.empty? }.length
  end

end
