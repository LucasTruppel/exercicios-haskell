ehPrimo :: Int -> Bool
ehPrimo n = ehPrimoRec n (n-1)
    where
        ehPrimoRec n i
            | i == 1 = True
            | (mod n i) == 0 = False
            | otherwise = ehPrimoRec n (i-1)

main = do
    print ("Escreva n:")
    nString <- getLine
    let n = (read nString :: Int)
    print("o numero eh primo:")
    print (ehPrimo n)