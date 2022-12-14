require 'time'

module MakeMove
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

  def shift(key, date)
    date_shift = date_offset(date)
    key.chars.filter_map.with_index do |single, index|
      if index <= 3
        (([single, key.chars[index + 1]].join.to_i) + date_shift[index]) % 27
      end
    end
  end
end