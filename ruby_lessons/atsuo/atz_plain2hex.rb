
# get command arg as plaintext
plaintext = ARGV[0]
# p plaintext
# transform plaintext to decimal array 
decimal_array = plaintext.bytes.to_a # AB -> [97, 98]
# decimal to hex
decimal_array.each do |decimal|
  print(decimal.to_s(16)) # 97 -> 61
end
puts "\n"
# output string 
# p hex_array

