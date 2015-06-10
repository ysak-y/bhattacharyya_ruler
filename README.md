

###README

Mesuaring Bhattacharyya distance.

Measure the Bhattacharyya distance of two histograms(don't need normatization).
These should have same number of columns and rows.

####Sample

		hist_1 = Array.new(5){Array.new(5){rand(1..50)}}
		hist_2 = Array.new(5){Array.new(5){rand(1..50)}}

		puts bhattacharyya_ruler(hist_1, hist_2) => 0.9065700987987918

	
