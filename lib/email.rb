class String
  @@greetings = []
  @@endings = []
  @@gifs = []

  def aileenify
    aileen_mail = @@greeting.sample + "\n" + self + "\n" + @@ending.sample
  end

end