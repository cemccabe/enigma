require 'time'
require_relative 'make_move'

class Enigma
  include MakeMove
  
  def encrypt(message, key = make_random_key, date = date_format)
    split_up_message = message.downcase.chars
    make_key = shift(key, date)
    encrypt = split_up_message.map.with_index do |char, index|
      new_index = (character_set.index(char) + make_key[index % 4]) % 27
      character_set[new_index]
    end
    {encryption: encrypt.join, key: key, date: date}
  end

  def decrypt(message, key, date = date_format)
    split_up_message = message.downcase.chars
    make_key = shift(key, date)
    decrypt = split_up_message.map.with_index do |char, index|
      new_index = (character_set.index(char) - make_key[index % 4])
      character_set[new_index]
    end
    {decryption: decrypt.join, key: key, date: date}
  end
end