fib n | n>=0 = helper 1 0 n
	  | n<0 = (-1)^(abs n + 1) * fib (-n)

helper acc1 acc2 0 = acc2
helper acc1 acc2 n = helper (acc1+acc2) (acc1) (n-1)
