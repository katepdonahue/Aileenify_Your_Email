class String
  @@greetings = []
  @@endings = []
  @@gifs = []

  def exclamations
    self.gsub(".", "!").gsub("?", "?!")
  end

  def all_caps
    sentences = self.split("!")
  end

  def wrap_it
    @@greeting.sample + "\n" + self + "\n" + @@ending.sample
  end

end