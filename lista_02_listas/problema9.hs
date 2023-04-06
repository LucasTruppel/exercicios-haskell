mapear :: (t1 -> t2) -> [t1] -> [t2]
mapear f [] = []
mapear f (a:b) = (f a) : (mapear f b)

modulo :: Int -> Int
modulo x =
    if x < 0 then
        -1 * x
    else
        x

main = (print (mapear modulo [-10..10]))
