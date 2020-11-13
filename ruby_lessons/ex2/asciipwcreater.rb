#a~z A~Z 0~9 記号の配列を作る
array = [*"a".."z" , *"A".."Z" , *"0".."9" , '!' , '“' , '#' , '$' , '%' , '&', "‘", "(", ")", "=", "~", "|", "-", "^", "¥", "@", "`", "{", "}" , "[", "]", "*" , "_"  , "?" , "<" , ">" , "." , ";"]

#puts array
#arrayから１文字ずつランダムに32文字抽出する
pw_array = []
while pw_array.size < 32 do
pw_array.push(array.sample)
end
#print pw_array
print pw_array.join
print "\n"
