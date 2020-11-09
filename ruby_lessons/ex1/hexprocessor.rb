#optparseをrequireする
require 'optparse'
#optparseのインスタンスを作成
op = OptionParser.new
#onの引数には-で省略形、--で省略型でないオプション設定
#そのあとにオプションの説明
op.on("-p","--plaintohex ARG","puts hex"){
#取得した文字列を16進文字列に変換
|command|
hex_array = command.unpack("H*")
hex=hex_array.join
#数値に変換
print hex.to_i
print "\n"
}

op.on('-h','--hextoplain ARG','puts plain'){
|command|
#取得した文字列を配列にする
command_array = [command]
#配列を10進に変換
print command_array.pack('H*')
print "\n"
}
op.parse(ARGV)

