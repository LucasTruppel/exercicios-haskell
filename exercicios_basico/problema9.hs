distancia :: Float -> Float -> Float -> Float -> Float -> Float -> Float
distancia x1 y1 z1 x2 y2 z2 = ((x2-x1)**2 + (y2-y1)**2 + (z2-z1)**2)**0.5

main = do
    print("Digite x1")
    x1String <- getLine
    print("Digite y1")
    y1String <- getLine
    print("Digite z1")
    z1String <- getLine
    print("Digite x2")
    x2String <- getLine
    print("Digite y2")
    y2String <- getLine
    print("Digite z2")
    z2String <- getLine
    let x1 = (read x1String :: Float)
    let y1 = (read y1String :: Float)
    let z1 = (read z1String :: Float)
    let x2 = (read x2String :: Float)
    let y2 = (read y2String :: Float)
    let z2 = (read z2String :: Float)
    print(distancia x1 y1 z1 x2 y2 z2)
