t = gets.chomp.to_i

t.times do
  a, b = gets.chomp.split

  a = a.to_i + 1
  a += 1 until a.to_s.gsub(/[^47]/,'') == b
  puts a
end
