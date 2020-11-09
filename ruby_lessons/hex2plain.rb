#コマンド引数を取得
command = ARGV[0]
#取得した文字列を配列にする
command_array = [command]
#配列を10進に変換
print command_array.pack('H*')


