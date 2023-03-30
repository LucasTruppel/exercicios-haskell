{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Redundant if" #-}

alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

aprovado :: (Int, String, Float) -> String
aprovado (a, b, c) = 
    if c >= 6.0 then
        b
    else
        "Reprovado"

naoReprovado :: String -> Bool
naoReprovado a =
    if (a /= "Reprovado") then
        True
    else
        False

gerarListaAprovados :: [(Int, String, Float)] -> [String]
gerarListaAprovados a =
    (filter naoReprovado(map aprovado a))

main = do
    print (gerarListaAprovados alunos)