integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = helper f a b 999 0

helper f a b 0 s = s+(hf a b 1000)*((f a)+(f b))/2
helper f a b n s = helper f a b (n-1) (s+(hf a b 1000)*(f (b-n*(hf a b 1000))))

hf a b l = (b-a)/l

