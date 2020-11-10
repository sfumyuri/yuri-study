#1~31の数字の配列を作成
array_num = [*1..31]
array_num.count.times do |num|
#7.times do

#ランダムにとった要素を一つずつ削除してい

print array_num.delete_at(rand(array_num.count))  
print " "
break if num == 6
end

