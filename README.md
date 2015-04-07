

###README

Bhattacharyya距離の測定
2つのヒストグラム(正規化していなくても可)を渡すと、Bhattacharyya距離を返します。行と列の数はそれぞれ同じでないといけません。

####サンプル

		hist_1 = Array.new(5){Array.new(5){rand(1..50)}}
		hist_2 = Array.new(5){Array.new(5){rand(1..50)}}

		puts bhattacharyya_ruler(hist_1, hist_2) => 0.9065700987987918

	
