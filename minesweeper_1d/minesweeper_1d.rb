t = gets.chomp.to_i

t.times do
  s = gets.chomp!
  mods = 1000000007
  a = [[0, 0, 0], [0, 0, 0]]

  len = s.size
  cur = 0
  nxt = 1

  a[cur][0] = a[cur][1] = 1

  s.each_char do |ch|
    case ch
    when '0'
      a[nxt][0] = a[cur][0]
    when '1'
      a[nxt][1] = a[cur][0]
      a[nxt][0] = a[cur][2]
    when '2'
      a[nxt][1] = a[cur][2]
    when '*'
      a[nxt][2] = (a[cur][1] + a[cur][2]) % mods
    when '?'
      a[nxt][1] = (a[cur][2] + a[cur][0]) % mods
      a[nxt][0] = (a[cur][0] + a[cur][2]) % mods
      a[nxt][2] = (a[cur][1] + a[cur][2]) % mods
    end
    cur = nxt
    nxt = cur == 0 ? 1 : 0
    a[nxt] = [0, 0, 0]
  end

  puts "#{(a[cur][0] + a[cur][2]) % mods}"
end
