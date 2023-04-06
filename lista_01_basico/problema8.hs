delta :: Float -> Float -> Float -> Float
delta a b c = (b**2) - (4 * a * c)


bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c = 
    (x1, x2) where
        x1 = (-b + del**0.5) / (2 * a)
        x2 = (-b - del**0.5) / (2 * a)
        del = (delta a b c)

main = do
    print("Digite a")
    aString <- getLine
    print("Digite b")
    bString <- getLine
    print("Digite c")
    cString <- getLine
    let a = (read aString :: Float)
    let b = (read bString :: Float)
    let c = (read cString :: Float)
    print(bhaskara a b c)
