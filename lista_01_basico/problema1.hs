exponencial :: Int -> Int -> Int
exponencial x y = x ^ y

main = do
    xString <- getLine
    yString <- getLine
    let x = (read xString :: Int)
    let y = (read yString :: Int)
    print (exponencial x y)
