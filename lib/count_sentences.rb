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
    split_sentence.push(self.split("."))
    split_sentence.map! {|s| self.split("!")}.flatten
    split_sentence.map! {|s| self.split("?")}.flatten
    split_sentence.delete_if { |s| s.empty? }.length
  end

end
