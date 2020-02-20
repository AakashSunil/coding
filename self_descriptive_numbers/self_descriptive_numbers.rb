t = gets.chomp.to_i

t.times do
  num = gets.chomp
  if num == num.length.times.map { |x| num.count(x.to_s) }.join
    puts 1
  else
    puts 0
  end
end
