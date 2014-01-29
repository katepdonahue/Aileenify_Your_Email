class String
  attr_reader :used
  @@greetings = ["ALSO I JUST MADE A HILARIOUS JOKE", "WAHOOOOO", "FUTURISTIC SHIT!!!!!!!", "WTF THIS LOOKS AWESOME", 
                 "WHADDUP", "YEAAAAAH???", "LOL", "OMGOMGOMGOMG", "IS THERE ANY WAY WE CAN GHOST RIDE THE WHIP THIS WEEKEND",
                 "Dis is crazy", "LOLOLOLOL OMG I JUST DIED", 
                 "I'M STILL SO EXCITED!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
                  "CANNOT WAIT", "COME BACCCKKK", "I'm reading this print out I made of 'of mice and men' and pretending it's the worksheet at the meeting hehehe", "WAKEY WAKEY!!!!", 
                  "WHAT!!!! SO LAME!! I thought we were in friend love!!!!!", 
                  "yo can you double check for me that you can't see that i've been listening to one direction on repeat on spotify...
i need to know private sess is working"]

  @@endings = ["DONT YOU LOVE ME!!!", "OMG WHAT IS THIS", "lolololz",
               "I FELL LIKE I HAVENT SEEN YOU IN 5EVAH", 
                "FUCK YOU BABY BUSTER", "THIS IS STAN\nBUT ACTUALLY THIS IS AILEEN",
                "OKAY BYE BITCHES", "you're welcome you lazy fucks\n<3<3<3<3  ;)", "I BE DRANKIN", 
                "ughhhhhhhUGHHHHHHH I'M ACTUALLY DOING WORK", "THIS SUCKS COME BACK TO MEEEEEEE",
                "there's only one condition in which i would not love you. AND THAT'S IF YOU GOT FISH ARMS"]

  @@lols = [" DA FUCK!", " ALSO,", " OMG", " OMGGGGGGG", " LOLLERZZZ", " WTF!!", " I LOLLED AT MYSELF FOR LIKE 5 MIN",
            " FUUUUUUUUCK", " LOLOLOLOLOLOL HAHAHAHHAHAHAHAHAHAHAHAHA", " wtfffffff", " fuuuuuuuuuck", " HAHAHAHAHA",
             " (all I want to do is lay in my bed and EAT THAI FOOD)", " lolled so hard in the bathroom (yea i check my emails while i pee)", 
             " lulllz", " LOLOLOLOLZ", "LOLOLOL I lolled so fucking hard at that", "AND IF THAT WAS SO THEN I AM REAL EMBARRASSED COS I HAD SOME WEIRD THOUGHTS IN THAT PANERA.", "I DIE I DIE"]

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
    sentences = self.split(/(?<=!)(?=\s)/)
    num = rand(1..sentences.size)
    num.times do
      sentences[rand(num-1)].upcase!
    end
    sentences.join
  end

  def lol(used)
    sentences = self.split(/(?<=!)(?=\s)/)
    num = rand(1..sentences.size)
    num.times do
      sentences[rand(num-1)] << pick(@@lols, used)
    end
    sentences.join
  end

  def byeeee
    last = /([a-z])[^a-z]*\z/i.match(self)[1]
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
    self.strip.exclamations.cos.all_caps.byeeee.lol(used).wrap_it.array_it
  end

end


# what's broken:
# write regex in exclamations so that . in .com ect. is not changed to exclamation point
# also for ...
# make it so that the gif is found by a search term which is pulled from the email
# consider writing spec
# CSS: style italic class
# other ideas: add buzzfeed links
# sub out some words for other words