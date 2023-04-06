fibonnaci :: Int -> Int
fibonnaci 0 = 0
fibonnaci 1 = 1
fibonnaci n = (fibonnaci (n-2)) + (fibonnaci (n-1))

main = do
    print("Digite um numero")
    numeroString <- getLine
    let numero = (read numeroString :: Int)
    print("Fibonnaci:")
    print (fibonnaci numero)
