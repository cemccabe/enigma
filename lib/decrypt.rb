require_relative 'enigma'

decrypt_message = File.read(ARGV[0])
enigma = Enigma.new
decryption = enigma.decrypt(decrypt_message, ARGV[2], ARGV[3])
argv1 = File.open(ARGV[1], 'w')
argv1.write(decryption[:decryption])
argv1.close

puts "Created '#{ARGV[1]}' with the key #{decryption[:key]} and date #{decryption[:date]}"