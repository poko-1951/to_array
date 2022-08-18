puts "カンマ区切りで複数の数値を入力してください"
input_array = gets.chomp.split(",")
# input_array = [0,1,2,3,4,5,6]

puts "再構成する配列の行と列のどちらを固定しますか？（'行'or'列'）"
select = gets.chomp

if select == "列"
  puts "列数を入力してください"
  new_column = gets.chomp.to_i
  new_line = ((input_array.count)/new_column.to_f).ceil
end

if select == "行"
  puts "行数を入力してください"
  new_line = gets.chomp.to_i
  new_column = ((input_array.count)/new_line.to_f).ceil
end

i = 0
new_array = []
while i < new_line do
  new_array << input_array[(i*new_column)..(i*new_column + new_column - 1)]
  i += 1
end

puts "input_array"
p input_array
puts "new_array"
p new_array