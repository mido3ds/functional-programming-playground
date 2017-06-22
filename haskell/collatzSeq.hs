collatzSeq :: Integer -> [Integer]
collatzSeq 1 = [1]
collatzSeq x
    | even x = x : collatzSeq (x `div` 2)
    | odd x = x : collatzSeq (x * 3 + 1)