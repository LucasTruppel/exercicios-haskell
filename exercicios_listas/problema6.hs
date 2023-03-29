{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Redundant if" #-}


ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias lista numero = ocorrenciasRec(lista numero 0)
    

ocorrenciasRec :: [Int] -> Int -> Int -> Int
ocorrenciasRec 

main = print(ocorrencias [10..100] 56)