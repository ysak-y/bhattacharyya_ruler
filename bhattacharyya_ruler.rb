

def bhattacharyya_ruler(hist_1, hist_2)

	row = hist_1.length
	col = hist_1[0].length
	
	if hist_2.length != row || hist_2[0].length != col
		#行か列の数が違う場合はfalseを返す。
		return false
	end
	
	#各ヒストグラムの正規化を行う
	sum = 0
	sum2 = 0

	row.times do |i|
		sum += hist_1[i].inject(0){|s, n| s + n}
		sum2 += hist_2[i].inject(0){|s, n| s + n}
	end

	row.times do |i|
		hist_1[i] = hist_1[i].map{|a| a.to_f / sum}
		hist_2[i] = hist_2[i].map{|a| a.to_f / sum2}
	end
	
	#Bhattacharyya距離を測定する。
	dist = 0

	row.times do |i|
		col.times do |j|
			dist += Math.sqrt(hist_1[i][j] * hist_2[i][j])
		end
	end

	return dist

end


if __FILE__ == $0
	
	hist_1 = Array.new(5){Array.new(5){rand(1..50)}}
	hist_2 = Array.new(5){Array.new(5){rand(1..50)}}

	puts bhattacharyya_ruler(hist_1, hist_2)

end
