soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + (soma b)

len :: [Int] -> Int
len [] = 0
len (a:b) = 1 + (len b)

media :: [Int] -> Float
media a = (fromIntegral (soma a))  / (fromIntegral (len a))

main = print(media [1..10])