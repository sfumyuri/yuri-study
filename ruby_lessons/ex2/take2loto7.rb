#結果の格納する配列
loto_array = []
#1から31の配列
#num_array = [*1..31]
#loto_arrayの要素が７つ入るまで処理を繰り返す
while loto_array.size < 7 do
  #1~31の数字をランダムにとる　
  temp = [*1..31].sample
  #もしloto_arrayを検索して、tempがなくfalseが返ってきたら
  #loto_arrayにtempを追加
  if loto_array.include?(temp) == false then
    loto_array.push(temp)
  end
end
#配列じゃない形で表示
print loto_array.join(" ")
print "\n"
