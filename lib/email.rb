require "debugger"

class String
  attr_reader :used
  @@greetings = ["ALSO I JUST MADE A HILARIOUS JOKE", "WAHOOOOO", "FUTURISTIC SHIT!!!!!!!", "WTF THIS LOOKS AWESOME", 
                 "WHADDUP", "YEAAAAAH???", "LOL", "OMGOMGOMGOMG", "IS THERE ANY WAY WE CAN GHOST RIDE THE WHIP THIS WEEKEND",
                 "Dis is crazy", "LOLOLOLOL OMG I JUST DIED", 
                 "I'M STILL SO EXCITED!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
                  "CANNOT WAIT"]

  @@endings = ["DONT YOU LOVE ME!!!", "OMG WHAT IS THIS", "lolololz",
               "I FELL LIKE I HAVENT SEEN YOU IN 5EVAH", 
                "FUCK YOU BABY BUSTER", "THIS IS STAN\nBUT ACTUALLY THIS IS AILEEN",
                "OKAY BYE BITCHES", "you're welcome you lazy fucks/n<3<3<3<3  ;)"]

  @@lols = [" DA FUCK!", " ALSO,", " OMG", " OMGGGGGGG", " LOLLERZZZ", " WTF!!", " I LOLLED AT MYSELF FOR LIKE 5 MIN",
            " FUUUUUUUUCK", " LOLOLOLOLOLOL HAHAHAHHAHAHAHAHAHAHAHAHA", " wtfffffff", " fuuuuuuuuuck", " HAHAHAHAHA",
             " (all I want to do is lay in my bed and EAT THAI FOOD)", " lolled so hard in the bathroom (yea i check my emails while i pee)", " lulllz"]

  def pick(array, used)
    my_choice = array.sample
    while used.include? my_choice
      my_choice = array.sample
    end
    used << my_choice
    my_choice
  end

  def exclamations
    self.gsub("!", "!!!!!!").gsub(".", "!").gsub("?", "?!")
  end

  def cos
    self.gsub("because", "cos")
  end

  def all_caps
    sentences = self.split("!")
    num = rand(1..sentences.size)
    num.times do
      sentences[rand(num-1)].upcase!
    end
    sentences.join("!") + "!"
  end

  def lol(used)
    sentences = self.split("!")
    num = rand(1..sentences.size)
    num.times do
      sentences[rand(num-1)] << "!" pick(@@lols, used)
    end
    sentences.join
  end

  def byeeee
    last = /([a-z])[^a-z]*\z/i.match(self)[1]# make sure this is the last letter
    self.gsub(/(?<=[a-z])(?=[^a-z]*\s*\z)/i, last*5)
  end

  def wrap_it
    "#{@@greetings.sample}\n#{self}\n#{@@endings.sample}"
  end

  def array_it
    split("\n")
  end

  def aileenify
    used = []
    debugger
    self.exclamations.cos.all_caps.byeeee.lol(used).wrap_it.array_it
  end

end


# what's broken:
# Users/katedonahue/Development/projects/sinatra_apps/aileen-speak/app.rb:3: warning: 
# nested repeat operator ? and * was replaced with '*': /([a-z])[^a-z]?*\z/
# actually, lols array may be working there possibly with less frequency?
# consider writing spec
# CSS: style italic class
# other ideas: add buzzfeed links
# sub out some words for other words