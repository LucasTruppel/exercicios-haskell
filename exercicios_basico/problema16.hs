ehDivisivel :: Int -> Int -> Bool
ehDivisivel x y =
    if ((mod x y) == 0) then
        True
    else
        False

main = do
    print ("Escreva x:")
    xString <- getLine
    print ("Escreva y:")
    yString <- getLine
    let x = (read xString :: Int)
    let y = (read yString :: Int)
    print("x eh divisivel por y:")
    print (ehDivisivel x y)