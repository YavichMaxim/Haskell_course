sumcount x = helper (x,0,0)
	 
helper 0 acc2 acc3 = 0 acc2 acc3
helper acc1 acc2 acc3 = helper (acc1 `div` 10) (acc2 + (acc1 `mod` 10)) (acc3+1)
