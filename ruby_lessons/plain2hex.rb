#コマンド引数を取得
command = ARGV[0]
#取得した文字列を10進配列に変換
decimal_array = command.bytes.to_a
#10進配列から要素を取り出して16進文字列に変換
decimal_array.each do |decimal|

print (decimal.to_s(16)).chomp

end

print "\n"
