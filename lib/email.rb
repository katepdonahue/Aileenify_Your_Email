class String
  @@greetings = []
  @@endings = []
  @@gifs = []

  def exclamations
    self.gsub(".", "!").gsub("?", "?!")
  end

  def all_caps
    sentences = self.split("!")
    rand(sentences.size)
  end

  def wrap_it
    @@greeting.sample + "\n" + self + "\n" + @@ending.sample
  end

end