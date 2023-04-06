mdc :: Int -> Int -> Int
mdc a b = 
    if (a == 0) then
        b
    else
        (mdc(mod b a) a)

main = do
    print("Digite a")
    aString <- getLine
    print("Digite b")
    bString <- getLine
    let a = (read aString :: Int)
    let b = (read bString :: Int)
    print(mdc a b)
