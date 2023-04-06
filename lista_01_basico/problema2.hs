modulo :: Int -> Int
modulo x =
    if x < 0 then
        -1 * x
    else
        x

main = do
    xString <- getLine
    let x = (read xString :: Int)
    print (modulo x)
