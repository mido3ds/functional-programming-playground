take' :: Int -> [a] -> [a]
-- using guards
-- take' n a
--     | n <= 0 || length a == 0 = []
--     | otherwise = (head a):take' (n - 1) (tail a)

-- | another way to do it
-- using patterns
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x:take' (n - 1) xs