filtrar :: (t -> Bool) -> [t] -> [t]
filtrar f xList = [x | x <- xList, f x]

ehPositivo :: Int -> Bool
ehPositivo x = x > 0

main = (print (filtrar ehPositivo [-10..10]))
