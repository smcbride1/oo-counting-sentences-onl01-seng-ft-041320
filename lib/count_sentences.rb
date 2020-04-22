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
    self.split(".", "?", "!").delete_if { |s| s == "" }.length
  end
end
