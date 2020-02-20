t = gets.chomp.to_i

t.times do
  n, m, k = gets.chomp.split.map(&:to_i)
  a = []
  n.times do |i|
    a[i] = gets.split.map { |x| x.to_i - 1 }
  end

  lock = Array.new(n, 0)
  lockcell = Array.new(k, false)

  0.upto(m - 1) do |i|

    turn = Array.new(k, -1)
    0.upto(n - 1) do |j|

      if lock[j] == 0 && a[j][i] != -1
        if lockcell[a[j][i]]
	  lock[j] = i + 1
        elsif turn[a[j][i]] != -1
	  lock[turn[a[j][i]]] = lock[j] = i + 1
	  lockcell[a[j][i]] = true
        end
        turn[a[j][i]] = j
      end

    end
  end
  puts lock
end
