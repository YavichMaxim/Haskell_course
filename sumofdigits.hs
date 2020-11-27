
sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x | x>0 = helper x 0 0
		      | x<0 = helper (-x) 0 0
		      | x==0 = (0,1)
 where 
  helper 0 acc2 acc3 = (acc2,acc3)
  helper acc1 acc2 acc3 = helper (acc1 `div` 10) (acc2 + (acc1 `mod` 10)) (acc3+1)



