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
    array = self.split(/\.|\?|\!/)
    array.each map |s, index|
       array.slice!(index) if s.empty?
    end
    array.count
  end
  
end