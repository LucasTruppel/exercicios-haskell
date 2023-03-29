menor :: [Int] -> Int
menor [] = 0
menor (a:b) = (menorRec b a)

menorRec :: [Int] -> Int -> Int
menorRec [] menor = menor
menorRec (cabecaLista:lista) menor = 
    if menor < cabecaLista then
        (menorRec lista menor)
    else
        (menorRec lista cabecaLista)

maior :: [Int] -> Int
maior [] = 0
maior (a:b) = (maiorRec b a)

maiorRec :: [Int] -> Int -> Int
maiorRec [] maior = maior
maiorRec (cabecaLista:lista) maior = 
    if maior > cabecaLista then
        (maiorRec lista maior)
    else
        (maiorRec lista cabecaLista)

diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor a = (maior a) - (menor a)

main = print(diferencaMaiorMenor [10..100])