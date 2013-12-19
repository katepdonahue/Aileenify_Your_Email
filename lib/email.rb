class String
  @@greetings = []
  @@endings = []
  @@gifs = []
  @@lols = []

  def exclamations
    self.gsub("!", "!!!!!!").(".", "!").gsub("?", "?!")
  end

  def all_caps
    sentences = self.split("!")
    num = rand(1..sentences.size)
    num.times do |sentence|
      sentences[rand(num-1)].upcase!
    end
    sentences.join
  end

  def lol
    self + @@lols.sample
  end

  def wrap_it
    @@greeting.sample + "\n" + self + "\n" + @@ending.sample
  end

end