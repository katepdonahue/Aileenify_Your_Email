class String
  @@greetings = []
  @@endings = []
  @@gifs = []

  def exclamations
    self.gsub(".", "!").gsub("?", "?!")
  end

  def all_caps
    sentences = self.split("!")
    num = rand(1..sentences.size)
    num.times do |sentence|
      sentences[rand(num-1)]
    end
  end

  def wrap_it
    @@greeting.sample + "\n" + self + "\n" + @@ending.sample
  end

end