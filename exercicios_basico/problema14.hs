mdc :: Int -> Int -> Int
mdc a b = 
    if (a == 0) then
        b
    else
        (mdc(mod b a) a)

coprimos :: Int -> Int -> Bool
coprimos x y =
    if ((mdc x y) == 1) then
        True
    else
        False

main = do
    print("Digite x:")
    xString <- getLine
    print("Digite y:")
    yString <- getLine
    let x = (read xString :: Int)
    let y = (read yString :: Int)
    print(coprimos x y)
