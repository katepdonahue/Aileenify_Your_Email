class String
  @@greetings = ["ALSO I JUST MADE A HILARIOUS JOKE", "WAHOOOOO", "FUTURISTIC SHIT!!!!!!!", "WTF THIS LOOKS AWESOME", 
                 "WHADDUP", "YEAAAAAH???", "LOL", "OMGOMGOMGOMG", "IS THERE ANY WAY WE CAN GHOST RIDE THE WHIP THIS WEEKEND",
                 "Dis is crazy", "LOLOLOLOL OMG I JUST DIED", 
                 "I'M STILL SO EXCITED!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
                  "CANNOT WAIT"]
  @@endings = ["DONT YOU LOVE ME!!!", "OMG WHAT IS THIS", "lolololz",
               "I FELL LIKE I HAVENT SEEN YOU IN 5EVAH", 
                "FUCK YOU BABY BUSTER", "THIS IS STAN\nBUT ACTUALLY THIS IS AILEEN",
                "OKAY BYE BITCHES", "you're welcome you lazy fucks/n<3<3<3<3  ;)"]
  @@gifs = []
  @@lols = [" DA FUCK!", " ALSO,", " OMG", " OMGGGGGGG", " LOLLERZZZ", " WTF!!", " I LOLLED AT MYSELF FOR LIKE 5 MIN",
            " FUUUUUUUUCK", " LOLOLOLOLOLOL HAHAHAHHAHAHAHAHAHAHAHAHA", " wtfffffff", " fuuuuuuuuuck", " ALSO", "HAHAHAHAHA",
             "ALL I WANT TO DO IS PUT ON MY SLEEP SHORTS AND LAY IN MY BED AND EAT THAI FOOD.", "lolled so hard in the bathroom (yea i check my emails while i pee)", "lulllz"]

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



# other ideas: add buzzfeed links
# sub out some words for other words