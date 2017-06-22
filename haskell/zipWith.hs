zipWith' :: (a -> b -> (a, b)) -> [a] -> [b] -> [(a,b)]
zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (a:as) (b:bs) = f a b : zipWith' f as bs

-- | to use with zipWith'
addOne :: (Num a, Num b) => a -> b -> (a, b)
addOne a b = (a + 1, b + 1)