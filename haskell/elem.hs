elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (f:as) = a == f || elem' a as