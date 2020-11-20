#a~z A~Z 0~9の配列を作る
array = [*"a".."z" , *"A".."Z" , *"0".."9"]
#puts array
#arrayから１文字ずつランダムに8文字抽出する
pw_array = []
while pw_array.size < 8 do
#temp = array.sample
pw_array.push(array.sample)
end
print pw_array.join
print "\n"
