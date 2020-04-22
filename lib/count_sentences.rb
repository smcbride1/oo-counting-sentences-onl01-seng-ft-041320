require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with("?")
  end

  def exclamation?
    self.end_with("!")
  end

  def count_sentences
    split_sentence = []
    split_sentence.push(self.split("."))
    split_sentence.push(self.split("?"))
    split_sentence.push(self.split("!"))
    split_sentence.delete_if { |s| s == "" }.length
  end
end
