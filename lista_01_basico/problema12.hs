mdc :: Int -> Int -> Int
mdc a b = 
    if (a == 0) then
        b
    else
        (mdc(mod b a) a)

mdc3 :: Int -> Int -> Int -> Int
mdc3 a b c =
    (mdc (mdc a b) c)

main = do
    print("Digite a")
    aString <- getLine
    print("Digite b")
    bString <- getLine
    print("Digite c")
    cString <- getLine
    let a = (read aString :: Int)
    let b = (read bString :: Int)
    let c = (read cString :: Int)
    print(mdc3 a b c)
