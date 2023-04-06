{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Redundant if" #-}


ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias lista numero = (ocorrenciasRec lista numero 0)
    

ocorrenciasRec :: [Int] -> Int -> Int -> Int
ocorrenciasRec [] _ contador = contador
ocorrenciasRec (topo_lista:lista) numero contador =
    if (topo_lista == numero) then
        ocorrenciasRec lista numero (contador + 1)
    else
        ocorrenciasRec lista numero contador
main = print(ocorrencias [10, 20 , 30, 10, 20, 10] 10)