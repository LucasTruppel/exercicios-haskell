ehPrimo :: Int -> Bool
ehPrimo n = ehPrimoRec n (n-1)
    where
        ehPrimoRec n i
            | i == 1 = True
            | (mod n i) == 0 = False
            | otherwise = ehPrimoRec n (i-1)

goldbach :: Int -> (Int, Int)
goldbach n = goldbachRec n 2
    where
        goldbachRec n i
            | ehPrimo i && ehPrimo (n - i) = (i, n - i)
            | otherwise = goldbachRec n (i + 1)

main = do
    print ("Escreva um numero par:")
    nString <- getLine
    let n = (read nString :: Int)
    print("Goldbach:")
    print (goldbach n)
