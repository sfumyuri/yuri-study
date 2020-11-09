#result.txtに結果を貼り付ける
File.open("result.txt" , mode = "w"){|result|

#data.txtを1行づつ読み込む
	File.open("data_at.txt" ,  mode = "rt" ){|data|
  data.each_line{|line|
    #読み込んだ内容を,で区切る
    array = line.chomp.split(',')
    #もし配列の要素の一つ目に'h2p'の文字列を含んだら
    if array[0] == 'p2h' then
      hex_array = array[1].unpack("H*")
      hex=hex_array.join
#result.txtに書き込む
result.write(hex.to_i)

elsif array[0] == 'h2p' then
#取得した文字列を配列にする
hex_array = []
hex_array[0] = array[1]
#配列を10進に変換
result.write(hex_array.pack('H*'))

else
  print "error"
  break
end
}
}
}
