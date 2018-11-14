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
    self.split(/\.|\?|\!/)
    self.each map |s, index|
       self.slice!(index) if s.empty?
    end
    self.count
  end
  
end