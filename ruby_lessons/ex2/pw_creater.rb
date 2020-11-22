#生成したパスワードを格納する配列作成
pw_array = []

#似通った文字の配列を作成
similar_char = [*"I", "l", "O", "o", "1", "0", "|"]

#使いたい文字を格納する配列
select_char = []

#各文字の配列を作成
numbers = [*"0".."9"]
lower_cases = [*"A".."Z"]
upper_cases = [*"a".."z"]
symbols = ['!' , '“' , '#' , '$' , '%' , '&', "‘", "(", ")", "=", "~", "|", "-", "^", "¥", "@", "`", "{", "}" , "[", "]", "*" , "_"  , "?" , "<" , ">" , "." , ";"]
#puts numbers
#ユーザーにpwに使いたい文字の数字を足した数字を入力してもらう
puts "Please enter the number of the characters you want to use as the password" 
puts "(1:numbers, 2:lower_cases, 4:upper_cases, 8:symbols, 16:free symbols, default:15)"
select_num  = gets.to_i
# p select_num # 0 if enter
# p select_num == false # true
# exit
  
  if select_num == 1 then #1が入力された場合
    select_char.concat(numbers)#select_charに数字を入れる
  elsif select_num == 2 then#2が入力された場合
    select_char.concat(lower_cases) #大文字を入れる
  elsif select_num == 4 then#4が入力された場合
    select_char.concat(upper_cases) #小文字を入れる
  elsif select_num == 3 then #3が入力された場合
    select_char.concat(numbers, lower_cases) #数字と大文字を入れる
  elsif select_num == 7 then #7が入力された場合
    select_char.concat(numbers, lower_cases, upper_cases) #数字と大文字と小文字を入れる
  elsif select_num == 8 then #8が入力された場合
    select_char.concat(symbols) #記号を入れる
  elsif select_num == 15 then #15が入力された場合
    select_char.concat(numbers, lower_cases, upper_cases, symbols) #数字と大文字と小文字と記号を入れる
  elsif select_num == 0 then #空だった場合
    select_char.concat(numbers, lower_cases, upper_cases, symbols) #数字と大文字と小文字と記号を入れる
  elsif select_num == 6 then #6が入力された場合
    select_char.concat(lower_cases, upper_cases) #数字と大文字と小文字と記号を入れる
  elsif select_num == 16 then #16が入力された場合
    #使いたい記号を入力してもらう
    puts "Enter the symbols you want to use, separated by space"
    free_symbols = gets.split(' ') #記号をスペース区切りで入力してもらい配列として受け取る
    select_char.concat(free_symbols) 
  elsif select_num == 17 then #17が入力された場合
    select_char.concat(numbers)#select_charに数字を入れる
     #使いたい記号を入力してもらう
    puts "Enter the symbols you want to use, separated by spaces"
    free_symbols = gets.split(' ') #記号をスペース区切りで入力してもらい配列として受け取る
    select_char.concat(free_symbols)
  elsif select_num == 18 then#18が入力された場合
    select_char.concat(lower_cases) #大文字を入れる
   #使いたい記号を入力してもらう
    puts "Enter the symbols you want to use, separated by spaces"
    free_symbols = gets.split(' ') #記号をスペース区切りで入力してもらい配列として受け取る
    select_char.concat(free_symbols)
  elsif select_num == 20 then#20が入力された場合
    select_char.concat(upper_cases) #小文字を入れる
 #使いたい記号を入力してもらう
    puts "Enter the symbols you want to use, separated by spaces"
    free_symbols = gets.split(' ') #記号をスペース区切りで入力してもらい配列として受け取る
    select_char.concat(free_symbols)
  elsif select_num == 19 then #19が入力された場合
    select_char.concat(numbers, lower_cases) #数字と大文字を入れる
 #使いたい記号を入力してもらう
    puts "Enter the symbols you want to use, separated by spaces"
    free_symbols = gets.split(' ') #記号をスペース区切りで入力してもらい配列として受け取る
    select_char.concat(free_symbols)
  elsif select_num == 22 then #22が入力された場合
    select_char.concat(lower_cases, upper_cases) #数字と大文字と小文字を入れる
  #使いたい記号を入力してもらう
    puts "Enter the symbols you want to use, separated by spaces"
    free_symbols = gets.split(' ') #記号をスペース区切りで入力してもらい配列として受け取る
    select_char.concat(free_symbols)
  elsif select_num == 23 then #23が入力された場合
    select_char.concat(numbers, lower_cases, upper_cases) #数字と大文字と小文字と好きな記号を入れる
    puts "Enter the symbols you want to use, separated by spaces"
    free_symbols = gets.split(' ')
    select_char.concat(free_symbols)
   end 
  #length
  puts "length? (default:20)"
  length = gets.to_i
  if length == 0 then
     length = 20
 end
  #似通った文字は除くか
  puts "Exclude similar characters? (y/n, default:yes)"
  reply = gets.chomp

  #yだった時
  if reply === "y" then
   #delete_ifがブロック(doの後)を引数として受け取る
   #trueで返ってきた値を変数に入れて、破壊的削除していく
   select_char.delete_if do |similar| 
   similar_char.include?(similar) #similar_char==select_char時にtrueを返す
  # puts "OK"
  end
  elsif reply.empty? == true then
   select_char.delete_if do |similar|
   similar_char.include?(similar)
   end
  end
  
  #選択した文字を確認する
  puts "this is select char"
  puts select_char.join
  puts "y or n"
  i = gets.chomp
  
  if i === "y" then
    #指定の文字数でパスワード作成
    while pw_array.size < length do
    pw_array.push(select_char.sample)
    end
  puts pw_array.join
  else
    puts "もう一度最初からやり直してください"
  end
  
 
