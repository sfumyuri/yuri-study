#コマンド引数を取得
command = ARGV[0]
#取得した文字列を16進配列に変換
hex_array = command.unpack("H*")
#16進配列から文字列に変換
hex=hex_array.join
#数値に変換
print hex.to_i

print "\n"

