require 'time'

class Enigma
  def character_set
    ("a".."z").to_a << " "
  end

  def make_random_key
    rand.to_s[2..6]
  end

  def date_format
    Time.now.strftime("%d%m%y").to_s.delete('/')
  end

  def date_offset(date)
    (date.to_i ** 2).digits.reverse.last(4)
  end
end