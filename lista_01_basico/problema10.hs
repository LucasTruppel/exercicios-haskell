maior :: Float -> Float -> Float -> Float
maior a b c = (max (max a b) c)

main = do
    print("Digite o valor 1")
    aString <- getLine
    print("Digite o valor 2")
    bString <- getLine
    print("Digite o valor 3")
    cString <- getLine
    let a = (read aString :: Float)
    let b = (read bString :: Float)
    let c = (read cString :: Float)
    print(maior a b c)