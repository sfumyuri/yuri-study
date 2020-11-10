#1~31の数字の配列を作成
#*によって引数を複数個設定できる
#引数は配列として受け取られる
array_num = [*1..31]

#配列の個数を数える
#||はブロックパラメータ　繰り返しが何回かを知ることができる
array_num.count.times do |num|

#ランダムにとった配列の要素を削除していき、削除した要素を表示
print array_num.delete_at(rand(array_num.count))  
print " "
#numブロックの処理の繰り返し回数が６回になったら終了
break if num == 6
end

