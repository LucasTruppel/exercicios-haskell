xor :: Bool -> Bool -> Bool
xor x y = (x && (not y)) || ((not x) && y)

main = do
    xString <- getLine
    yString <- getLine
    let x = (read xString :: Bool)
    let y = (read yString :: Bool)
    print (xor x y)
