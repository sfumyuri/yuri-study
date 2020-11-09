# coding: utf-8
#result.txtを呼び出す
File.open("result.txt" , mode = "w") {|result|
#ヘッダー
result.puts ("#input , hex , plain") 
  #data.txtを1行づつ読み込む
  File.open("data.txt" , mode = "rt"){|f|
    f.each_line{|line|
    input = line.chomp
    #読み込んだ文字列を16進数に変換
    hex_array = input.unpack("H*")
    hex_s = hex_array.join
#    hex = hex_s.to_i
    #取得した文字列を配列にする
    plain = [input].pack('H*')
    #数値に変換
    result.puts (input + "," + hex_s + "," + plain)
    }
  }
}
