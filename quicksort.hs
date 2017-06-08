quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = smallPart ++ [x] ++ biggerPart
                where smallPart = quicksort [n | n <- xs, n <= x]
                      biggerPart = quicksort [n | n <- xs, n > x]