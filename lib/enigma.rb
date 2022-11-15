class Enigma
  def character_set
    ("a".."z").to_a << " "
  end

  def make_random_key
    rand.to_s[2..6]
  end
end