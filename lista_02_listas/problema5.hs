busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (cabecaLista:lista) numero = 
    if (cabecaLista == numero) then
        True
    else
        busca lista numero

main = print(busca [10..100] 56)