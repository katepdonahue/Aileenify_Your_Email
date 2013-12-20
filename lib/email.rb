class String
  @@greetings = ["ALSO I JUST MADE A HILARIOUS JOKE", "WAHOOOOO", "FUTURISTIC SHIT!!!!!!!", "WTF THIS LOOKS AWESOME", "Dis is crazy", "LOLOLOLOL OMG I JUST DIED"]
  @@endings = ["DONT YOU LOVE ME!!!", "OMG WHAT IS THIS", "lolololz", "I FELL LIKE I HAVENT SEEN YOU IN 5EVAH", "FUCK YOU BABY BUSTER"]
  @@gifs = []
  @@lols = [" DA FUCK!", " ALSO,", " OMG", " OMGGGGGGG", " LOLLERZZZ", " WTF!!", " I LOLLED AT MYSELF FOR LIKE 5 MIN", " FUUUUUUUUCK", " LOLOLOLOLOLOL HAHAHAHHAHAHAHAHAHAHAHAHA", " wtfffffff", " fuuuuuuuuuck", " ALSO"]

  def exclamations
    self.gsub("!", "!!!!!!").gsub(".", "!").gsub("?", "?!")
  end

  def all_caps
    sentences = self.split("!")
    num = rand(1..sentences.size)
    num.times do
      sentences[rand(num-1)].upcase!
    end
    sentences.join("!")
  end

  def lol
    sentences = self.split("!")
    num = rand(1..sentences.size)
    num.times do
      sentences[rand(num-1)] + @@lols.sample
    end
    sentences.join("!")
  end

  def byeeee
    last = /([a-z])[^a-z]?\s*\z/.match(self)[1]# make sure this is the last letter
    self.gsub(/(?<=[a-z])(?=[^a-z]?\s*\z)/, last*5)
  end

  def wrap_it
    "#{@@greetings.sample}\n#{self}\n#{@@endings.sample}"
  end

  def aileenify
    self.exclamations.all_caps.lol.byeeee.wrap_it
  end

end



# other ideas: add extra letters to words, add buzzfeed links
# sub out some words for other words