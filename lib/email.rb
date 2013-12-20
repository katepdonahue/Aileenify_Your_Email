class String
  @@greetings = ["ALSO I JUST MADE A HILARIOUS JOKE", "WAHOOOOO", "FUTURISTIC SHIT!!!!!!!", "WTF THIS LOOKS AWESOME", "Dis is crazy", "LOLOLOLOL OMG I JUST DIED"]
  @@endings = ["DONT YOU LOVE ME!!!", "OMG WHAT IS THIS", "lolololz", "I FELL LIKE I HAVENT SEEN YOU IN 5EVAH", "FUCK YOU BABY BUSTER"]
  @@gifs = []
  @@lols = [" DA FUCK!", " ALSO,", " OMG", " OMGGGGGGG", " LOLLERZZZ", " WTF!!", " I LOLLED AT MYSELF FOR LIKE 5 MIN", " FUUUUUUUUCK", " LOLOLOLOLOLOL HAHAHAHHAHAHAHAHAHAHAHAHA", " wtfffffff", " fuuuuuuuuuck", " ALSO"]

  def exclamations
    self.gsub("!", "!!!!!!").(".", "!").gsub("?", "?!")
  end

  def all_caps
    sentences = self.split("!")
    num = rand(1..sentences.size)
    num.times do |sentence|
      sentences[rand(num-1)].upcase!
      sentence.lol
    end
    sentences.join
  end

  def lol
    self + @@lols.sample
  end

  def wrap_it
    @@greeting.sample + "\n" + self + "\n" + @@ending.sample
  end

  def aileenify
    self.exclamations.all_caps.wrap_it
  end

end

# other ideas: add extra letters to words, add buzzfeed links