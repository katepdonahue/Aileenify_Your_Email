class String
  @@greetings = []
  @@endings = []
  @@gifs = []

  def exclamations
    self.gsub(".", "!")
  end

  def wrap_it
    @@greeting.sample + "\n" + self + "\n" + @@ending.sample
  end

end