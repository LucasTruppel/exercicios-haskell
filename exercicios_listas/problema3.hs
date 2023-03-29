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

main = print(menor [5..10])