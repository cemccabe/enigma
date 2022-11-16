require_relative 'enigma'

encrypt_message = File.open(ARGV[1], 'w')
enigma = Enigma.new
encryption = enigma.encrypt(File.read(ARGV[0]))
encrypt_message.write(encryption[:encryption])
encrypt_message.close

puts "Created '#{ARGV[1]}' with the key #{encryption[:key]} and date #{encryption[:date]}"