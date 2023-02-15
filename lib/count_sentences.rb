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
    
  end
end
"Hi, my name is Sophie.".sentence?
"What's your name?".question?
"Hi, my name is Sophie!".exclamation?
"one. two. three?".count_sentences





# "The weather outside is frightful.".sentence?
# # true
# "But the fire is so delightful".sentence?
# # false






